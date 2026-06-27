# Processor Architecture

## Overview

The processor consists of two execution paths:

1. Scalar RV32I Datapath
2. RVV-Inspired Vector Datapath

Both datapaths share the instruction memory and program counter while maintaining independent execution hardware.

---

## Scalar Modules

- Program Counter (PC)
- Instruction Memory
- Control Unit
- Immediate Generator
- Register File
- Arithmetic Logic Unit (ALU)
- Data Memory
- Write Back Logic

---

## Vector Modules

- Vector Register File
- Vector ALU
- Vector Control Unit

---

## Top-Level Module

The top-level processor integrates both scalar and vector execution units.