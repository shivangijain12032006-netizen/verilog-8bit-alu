# Verilog 8-bit Arithmetic Logic Unit (ALU)
This project implements an **8-bit Arithmetic Logic Unit (ALU)** using Verilog HDL.
The ALU performs **16 arithmetic and logical operations** based on a **4-bit operation selector** and generates a **16-bit output result** along with **Carry and Zero status flags**.

The design demonstrates fundamental digital design concepts such as **combinational logic, sequential logic, and clock-controlled operations** used in processor architectures.

---

## Features

* 8-bit input operands (`a`, `b`)
* 16-bit result output (`y`)
* 16 different ALU operations
* Carry flag generation
* Zero flag detection
* Clock-driven execution
* Enable signal control

---

## Supported Operations

| Opcode | Operation      |
| ------ | -------------- |
| 0000   | Addition       |
| 0001   | Subtraction    |
| 0010   | Increment      |
| 0011   | Decrement      |
| 0100   | Multiplication |
| 0101   | Division       |
| 0110   | AND            |
| 0111   | OR             |
| 1000   | XOR            |
| 1001   | NAND           |
| 1010   | NOR            |
| 1011   | XNOR           |
| 1100   | Shift Left     |
| 1101   | Shift Right    |
| 1110   | Rotate Right   |
| 1111   | Rotate Left    |

---

