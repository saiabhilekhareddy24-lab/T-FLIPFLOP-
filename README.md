T Flip-Flop using Verilog HDL
Description

A T (Toggle) Flip-Flop is a sequential logic circuit used to store one bit of information. It has a single T input and changes its output on the active clock edge. When T = 1, the output toggles, and when T = 0, the output remains unchanged.

Features
Designed using Verilog HDL
Positive-edge triggered
Single T input
Supports Hold and Toggle operations
Includes a Verilog testbench
Simulation results are provided in HTML format
Truth Table
T	Q(next)	Operation
0	Q	Hold
1	~Q	Toggle
Working Principle

The T Flip-Flop changes its output only at the positive edge of the clock.

T = 0: The output Q remains unchanged.
T = 1: The output Q toggles between 0 and 1.
Project Files
T-Flip-Flop/
│
├── t_flipflop.v
├── t_flipflop_tb.v
├── simulation_output.html
└── README.md

Verilog Design

The T Flip-Flop is implemented using an always block triggered by the positive edge of the clock.

Simulation

The testbench verifies both Hold and Toggle operations by applying different values to the T input.

The simulation results are available in:

simulation_output.html

Tools Used
Verilog HDL
Icarus Verilog / ModelSim / Vivado
GTKWave (optional)
Result

The T Flip-Flop successfully holds its previous state when T = 0 and toggles its output when T = 1.

Author

T Flip-Flop Digital Electronics Project
