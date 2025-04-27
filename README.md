# Design-and-Verification-of-4-bit-ALU-using-SystemVerilog

---

## Overview
This project involves the design and verification of a 4-bit Arithmetic Logic Unit (ALU) using SystemVerilog and simulation in Xilinx Vivado. The ALU performs basic arithmetic and logic operations, and its correctness is verified using a self-checking testbench.

---

## Features
- 4-bit Inputs: `A` and `B`
- 3-bit Operation Selector: `op_code`
- Supported Operations:
  - Addition (A + B)
  - Subtraction (A - B)
  - Bitwise AND (A & B)
  - Bitwise OR (A | B)
  - Bitwise XOR (A ^ B)
  - Bitwise NOT (~A)
  - Logical Shift Left (A << 1)
  - Logical Shift Right (A >> 1)
- Outputs:
  - `result` (4-bit operation result)
  - `zero` (flag if the result is zero)
  - `carry_out` (currently unused)

---

## Files
- `alu_4bit.sv` — ALU module code
- `tb_alu_4bit.sv` — Self-checking testbench

---

## Tools and Technologies Used
- **Language:** SystemVerilog
- **Simulator:** Xilinx Vivado Simulator (XSIM)
- **Environment:** Vivado 2022.2 (or newer)
- **Timescale:** 1 ns / 1 ps

---

## How to Run the Project
1. Clone or download this repository.
2. Open Xilinx Vivado.
3. Create a new project and add `alu_4bit.sv` and `tb_alu_4bit.sv`.
4. Set the project simulation language to **SystemVerilog**.
5. Run behavioral simulation.
6. Observe the console for `[PASS]` / `[FAIL]` messages.

---

## Results
- All 8 ALU operations were successfully verified.
- No mismatches found between expected and actual outputs.
- The zero flag operated correctly when the result was zero.
- Simulation completed without errors.

---

## Simulation results

![Simulation waveform][https://github.com/nandiniyamani/Design-and-Verification-of-4-bit-ALU-using-SystemVerilog/tree/main/Simulation_waveform.png]

---

## What We Learned
- How to design a combinational ALU using SystemVerilog.
- How to use case statements and logic operations.
- How to build a self-checking testbench for automatic verification.
- How to simulate designs using Xilinx Vivado.
- Importance of timing control (`# delays`) in simulation.
- Techniques for checking outputs automatically using expected results.

---

## Conclusion
This project successfully demonstrates the design and verification of a 4-bit ALU.  
The ALU performs all specified operations accurately, and the verification testbench ensures reliability by checking results automatically.  
Through this project, we improved skills in digital design, testbench development, simulation analysis, and professional project documentation.

---


