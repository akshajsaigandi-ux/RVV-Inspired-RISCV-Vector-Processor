# RTL Module Implementation Plan

## Overview

The processor is divided into three major sections:

1. Scalar RV32I Core
2. RVV-Inspired Vector Extension
3. Top-Level Integration and Verification

---

# Scalar Core Modules

## 1. program_counter.v

Purpose:
Maintains the address of the current instruction.

Inputs
- clk
- rst

Outputs
- pc

---

## 2. instruction_memory.v

Purpose:
Stores program instructions.

Outputs
- instruction

---

## 3. control_unit.v

Purpose:
Decodes the instruction opcode and generates control signals.

---

## 4. register_file.v

Purpose:
Implements the 32 general-purpose RV32I registers.

---

## 5. imm_gen.v

Purpose:
Generates immediate values from instructions.

---

## 6. alu.v

Purpose:
Performs arithmetic and logical operations.

---

## 7. data_memory.v

Purpose:
Stores load/store data.

---

# Vector Extension

## 8. vector_register_file.v

Purpose:
Stores eight 128-bit vector registers.

---

## 9. vector_alu.v

Purpose:
Executes vector arithmetic and logic.

Supported operations

- Vector Add
- Vector Subtract
- Vector AND
- Vector OR

---

## 10. vector_control_unit.v

Purpose:
Generates vector control signals.

---

# Integration

## 11. riscv_vector_processor.v

Purpose:
Integrates scalar and vector hardware into one processor.

---

# Verification

## 12. riscv_vector_processor_tb.v

Purpose:
Tests the complete processor.