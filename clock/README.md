# Digital Clock Using Verilog

## Description

This project implements a simple digital clock using Verilog HDL. The clock displays time in hours, minutes, and seconds and updates automatically with each clock pulse.

## Objective

The objective is to design and simulate a digital clock using Verilog HDL and verify its operation using a testbench.

## Inputs

* `clk` – Clock signal
* `reset` – Reset signal

## Outputs

* `hours` – Hours value
* `minutes` – Minutes value
* `seconds` – Seconds value

## Working

The digital clock starts from `00:00:00`. The seconds counter increases on every clock pulse. When seconds reach 59, they reset to 0 and the minutes increase. Similarly, when minutes reach 59, they reset to 0 and the hours increase.

The clock follows the sequence:

```text
00:00:00 → 00:00:01 → 00:00:02 → ... → 23:59:59 → 00:00:00
```

## Project Files

* `README.md` – Project documentation
* `digital_clock.v` – Verilog design code
* `digital_clock_tb.v` – Testbench
* `simulation_output.txt` – Simulation results

## Tools Used

* Verilog HDL
* Xilinx Vivado / ModelSim / Icarus Verilog
* GitHub

## Applications

* Digital watches
* Electronic clocks
* Timers
* Embedded systems
* FPGA-based digital systems

## Conclusion

The Digital Clock was successfully designed and simulated using Verilog HDL. The simulation demonstrates correct counting of seconds, minutes, and hours.
