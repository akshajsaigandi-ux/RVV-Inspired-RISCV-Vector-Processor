# RVV-Inspired RISC-V Vector Processor

Design and FPGA Implementation of a Low-Power RISC-V Vector Processing Unit with an RVV-inspired Vector Extension.

---

## Overview

This project presents the design and implementation of a RISC-V RV32I processor enhanced with an RVV-inspired vector extension. The processor is developed in Verilog HDL and targets FPGA implementation while supporting vectorized arithmetic and logical operations for improved data-level parallelism.

The architecture combines a conventional scalar execution pipeline with dedicated vector processing hardware, enabling efficient execution of both scalar and vector instructions.

---

## Project Objectives

- Design a 32-bit RV32I processor
- Implement an RVV-inspired vector extension
- Support 128-bit vector operations
- Verify functionality through simulation
- Target FPGA implementation
- Document the complete processor architecture

---

## Features

- RV32I Scalar Core
- 128-bit Vector Register File
- Four 32-bit Vector Lanes
- Vector ALU
- Vector Control Unit
- Modular Verilog Design
- FPGA Ready
- Simulation Verified

---

## Repository Structure

```text
RVV-Inspired-RISCV-Vector-Processor
│
├── src/
├── testbench/
├── simulation/
├── docs/
├── images/
├── scripts/
├── fpga/
├── LICENSE
└── README.md
```

---

## Development Status

| Phase | Status |
|--------|--------|
| Planning | ✅ |
| Repository Setup | ✅ |
| Architecture Design | ⏳ |
| RTL Design | ⏳ |
| Simulation | ⏳ |
| FPGA Implementation | ⏳ |
| Documentation | ⏳ |

---

## License

This project is licensed under the MIT License.