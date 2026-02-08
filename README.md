# RISC-V-Processor-Verilog
Single-cycle RISC-V processor using Verilog and ModelSim
RISC-V Processor Design Using Verilog (Single-Cycle)

# Project Title

Design and Simulation of a RISC-V Single-Cycle Processor Using Verilog HDL

# Project Description

This project implements a 32-bit RISC-V (RV32I) Single-Cycle Processor using Verilog HDL and verifies its operation using ModelSim. The processor executes one instruction per clock cycle and follows the classical datapath stages:

Instruction Fetch (IF)

Instruction Decode (ID)

Execute (EX)

Memory Access (MEM)

Write Back (WB)

All stages are completed within a single clock cycle.

This project is intended for academic, lab, and learning purposes to understand processor architecture and HDL-based design.

# Tools & Technologies

Hardware Description Language: Verilog HDL

Simulation Tool: ModelSim

Instruction Set Architecture: RISC-V RV32I

Operating System: Windows / Linux

Version Control: Git & GitHub

# Module Description

# Program Counter (pc.v)

Stores the current instruction address

Increments by 4 on each clock cycle

Resets to 0 when reset signal is high

# Instruction Memory (instruction_memory.v)

Holds RISC-V instructions

Outputs instruction based on PC address

 # Register File (register_file.v)

32 general-purpose registers (x0–x31)

Two read ports and one write port

Register x0 is hardwired to zero

# ALU (alu.v)

Performs arithmetic and logical operations

Controlled using ALU control signals

# Control Unit (control_unit.v)

Decodes instruction opcode

Generates control signals for datapath

# Top Module (riscv_top.v)

Integrates all modules

Represents the complete single-cycle CPU

# Testbench (tb_riscv.v)

Generates clock and reset

Used to simulate and verify processor behavior

# Simulation Steps (ModelSim)

Step 1: Create a Project

1. Open ModelSim

2. Go to File → New → Project

3. Add all .v files from src/ and tb/

Step 2: Compile the Design

Ensure there are no compilation errors.

Step 3: Start Simulation

vsim work.tb_riscv

Step 4: Add Signals to Waveform

add wave -r /*

Step 5: Run Simulation

run 500 ns

# Waveform Verification

Verify the following signals:

clk → Continuous toggling

reset → Asserted initially, then deasserted

pc → 0 → 4 → 8 → 12 → ...

instruction → Valid binary values


# Note on Red Lines / X Values

Temporary red lines (X) during transitions are normal

Caused by delta-cycle updates

Not an error if they disappear quickly

# Expected Output

Program Counter increments correctly

Instructions are fetched properly

Signals stabilize after reset

# Advantages

Simple and easy to understand

Suitable for beginners

Ideal for lab and mini-projects

Clear datapath implementation

# Future Enhancements

Implement 5-stage pipelined RISC-V processor

Add data forwarding and hazard detection

Support branch and jump instructions

Extend to RV32IM (Multiply/Divide)

 # GitHub Usage

README.md is the main file opened on GitHub

riscv_top.v is the main design file

tb_riscv.v is the simulation file

# TEAM MEMBERS

B.Chandra Shekhar(LEADER),
K.Vishnu,
N.Sai Vardhan
