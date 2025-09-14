# x86/x86-64 Registers Cheat Sheet

This document explains the main registers in x86 and x86-64 assembly, their purpose, and how they are used in programming and reverse engineering.

---

## 🧠 General-Purpose Registers (64-bit)

| Register | Purpose / Nickname | Notes / Usage |
|----------|------------------|---------------|
| **RAX** | **Accumulator / Answer Desk** | Stores results of calculations, return values from functions. Often used by arithmetic instructions. |
| **RBX** | **Base / Storage Desk** | General storage register. Preserved across function calls in some calling conventions. |
| **RCX** | **Counter Desk** | Loop counters; 4th argument in Linux x86-64; 1st in Windows x64. |
| **RDX** | **Data / Delivery Desk** | Holds 2nd argument (Linux) or 2nd argument (Windows). Also used for multiplication/division high/low results. |
| **RSI** | **Source Index** | 2nd argument (Linux); often used for string operations. |
| **RDI** | **Destination Index** | 1st argument (Linux); often used for string operations. |
| **RSP** | **Stack Pointer** | Points to the top of the stack. Changes constantly with push/pop/sub/add instructions. |
| **RBP** | **Base Pointer / Frame Anchor** | Reference point for local variables and function stack frames. Usually stable during a function. |
| **R8**  | **Extra Arg / Temp Desk** | 5th argument (Linux), caller-saved, general-purpose. |
| **R9**  | **Extra Arg / Temp Desk** | 6th argument (Linux), caller-saved, general-purpose. |
| **R10** | Scratch Register | Temporary register, caller-saved. Often used for intermediate calculations. |
| **R11** | Scratch Register | Temporary register, caller-saved. |
| **R12–R15** | Callee-Saved / Extra Desks | Preserved across function calls; safe storage for complex functions. |

---

## 📌 Special-Purpose Registers

| Register | Purpose / Nickname | Notes |
|----------|------------------|-------|
| **RIP** | Instruction Pointer | Points to the next instruction to execute. Changes automatically with jumps, calls, and returns. |
| **RFLAGS** | Status Flags | Holds CPU status flags (Zero, Carry, Sign, Overflow, etc.). Used to evaluate conditional jumps. |

---

## 💡 Function Arguments (Linux x86-64)

Registers are used to pass the first six arguments to functions:

| Argument # | Register |
|------------|----------|
| 1          | RDI      |
| 2          | RSI      |
| 3          | RDX      |
| 4          | RCX      |
| 5          | R8       |
| 6          | R9       |

> Windows x64 calling convention uses: RCX, RDX, R8, R9 for the first 4 arguments.

---

## 🔹 Quick Mnemonics

- **RAX = Answer / Return value**  
- **RBX = Box / Storage**  
- **RCX = Counter**  
- **RDX = Data delivery / multiplier**  
- **RSP = Stack Pointer / Top of stack**  
- **RBP = Base Pointer / Frame anchor**  
- **RIP = Instruction Pointer / CPU eyes**  
- **RFLAGS = CPU Mood / Condition flags**  

---

## 📝 Notes for Reverse Engineering

1. **RSP**: Always track top-of-stack changes — push/pop/sub/add instructions affect it.  
2. **RBP**: Use as stable reference for local variables (`[rbp-4]`, `[rbp-8]`) and function arguments (`[rbp+8]`).  
3. **RAX/RDX/RCX**: Often clue you into function outputs and inputs.  
4. **RIP**: Watch for jumps and calls to understand code flow.  
5. **RFLAGS**: Conditional jumps rely on Zero/Sign/Carry/Overflow flags.

---

This cheat sheet is designed as a **quick reference** for x86/x86-64 assembly learners and reverse engineers. Keep it open while disassembling code — it will help you immediately recognize register roles and patterns.

