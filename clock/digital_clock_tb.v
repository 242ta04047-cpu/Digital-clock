`timescale 1ns/1ps

module digital_clock_tb;

reg clk;
reg reset;

wire [4:0] hours;
wire [5:0] minutes;
wire [5:0] seconds;

digital_clock uut (
    .clk(clk),
    .reset(reset),
    .hours(hours),
    .minutes(minutes),
    .seconds(seconds)
);

// Clock generation
always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;

    #10;
    reset = 0;

    // Set simulation near minute rollover
    force uut.hours = 5'd12;
    force uut.minutes = 6'd59;
    force uut.seconds = 6'd58;

    #20;

    release uut.hours;
    release uut.minutes;
    release uut.seconds;

    #20;

    $finish;
end

initial
begin
    $monitor("Time=%0t | Clock = %02d:%02d:%02d",
             $time, hours, minutes, seconds);
end

endmodule