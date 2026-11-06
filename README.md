
# 4-Bit Binary Counter – ASIC Design

## Project Overview
A 4-bit synchronous binary counter designed using Verilog HDL.

The counter increments on every positive edge of the clock and resets to zero when the active-HIGH synchronous reset is asserted.

## Design Specifications
- Design: 4-bit Binary Counter
- HDL: Verilog
- Clock Period: 10 ns
- Clock Frequency: 100 MHz
- Reset: Synchronous Active HIGH
- Counter Range: 0 to 15

## Tools Used
- Visual Studio Code
- Icarus Verilog
- GTKWave
- Yosys
- OSS CAD Suite

## Design Flow
1. Specification
2. Architecture Design
3. RTL Design
4. Testbench Creation
5. Functional Verification
6. Waveform Analysis
7. Logic Synthesis
8. Gate-Level Netlist Generation

## Simulation Results
The design was simulated using Icarus Verilog and verified using GTKWave.

The counter successfully counts from 0 to 15 and rolls over to 0. Reset operation was also verified.

## Synthesis Results
Generic logic synthesis was performed using Yosys.

Generated netlist: `counter_synth.v`

Note: Technology-specific standard-cell mapping and physical design are future stages.

## Project Status
- [x] RTL Design
- [x] Testbench Development
- [x] Functional Simulation
- [x] GTKWave Verification
- [x] Generic Logic Synthesis

