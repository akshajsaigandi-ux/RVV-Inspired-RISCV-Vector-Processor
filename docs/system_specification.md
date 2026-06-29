# System Specification

## Project Title

RVV-Inspired RISC-V Vector Processor

---

## Objective

Design a 32-bit RISC-V RV32I processor with an RVV-inspired vector extension capable of executing scalar and vector operations efficiently. The design will be implemented in Verilog HDL and verified through simulation before FPGA implementation.

---

## Scalar Core

- ISA: RV32I
- Data Width: 32 bits
- Register Count: 32
- Register Width: 32 bits
- ALU Width: 32 bits

---

## Vector Extension

- Number of Vector Registers: 8
- Vector Register Width: 128 bits
- Elements per Register: 4 × 32-bit
- Vector ALU Width: 128 bits

---

## Supported Vector Operations

- Vector Addition
- Vector Subtraction
- Vector AND
- Vector OR

---

## Development Platform

- Language: Verilog HDL
- Simulation: Vivado Simulator
- FPGA Target: Xilinx Artix-7
- Version Control: Git
- Repository: GitHub