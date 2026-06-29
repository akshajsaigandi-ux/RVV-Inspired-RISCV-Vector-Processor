# RVV-Inspired RISC-V Vector Processor

> **Design and FPGA Implementation of a Low-Power RISC-V Vector Processing Unit with an RVV-Inspired Vector Extension**

![Verilog](https://img.shields.io/badge/HDL-Verilog-blue)
![RISC-V](https://img.shields.io/badge/Architecture-RV32I-green)
![FPGA](https://img.shields.io/badge/Target-Xilinx_Artix--7-orange)
![Vivado](https://img.shields.io/badge/Tool-Xilinx_Vivado-red)
![Status](https://img.shields.io/badge/Project-Completed-brightgreen)
![License](https://img.shields.io/badge/License-MIT-yellow)

---

## Overview

This project presents the design, implementation, simulation, and FPGA realization of a **32-bit RV32I RISC-V processor** enhanced with an **RVV-inspired vector processing extension**. The processor is implemented in **Verilog HDL**, verified through **Vivado simulation**, and organized using a modular RTL architecture.

The design combines a conventional scalar execution pipeline with dedicated vector execution hardware to accelerate data-parallel operations. The vector subsystem operates on **128-bit vector registers** divided into **four 32-bit lanes**, enabling simultaneous execution of arithmetic and logical operations.

The project emphasizes modular design, hardware verification, FPGA implementation, and clear documentation, making it suitable for academic, research, and portfolio purposes.

## Features

* 32-bit RV32I RISC-V Processor
* RVV-Inspired Vector Processing Extension
* 128-bit Vector Register File (4 × 32-bit lanes)
* Modular RTL Design in Verilog HDL
* Scalar and Vector Arithmetic Support
* Dedicated Vector ALU
* Vector Control Unit
* Parameterized Register Architecture
* Behavioral Simulation using Xilinx Vivado
* FPGA-Oriented Design Methodology
* Modular Testbenches for Verification
* Synthesizable RTL Architecture
