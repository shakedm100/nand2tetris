# Nand2Tetris Projects (Weeks 1–6)

A consolidated repository for my Nand2Tetris course work, covering the first six weeks (Boolean logic → VM Translator I). Each week’s folder contains HDL definitions, scripts, test scripts, and any supporting code.

---

## Table of Contents

- [Overview](#overview)  
- [Prerequisites](#prerequisites)  
- [Directory Structure](#directory-structure)  
- [Week-by-Week Summary](#week-by-week-summary)  
  - [Week 1: Boolean Logic (Project 1)](#week-1-boolean-logic-project-1)  
  - [Week 2: Boolean Arithmetic (Projects 2–3)](#week-2-boolean-arithmetic-projects-2–3)  
  - [Week 3: Sequential Logic & Memory (Project 4)](#week-3-sequential-logic--memory-project-4)  
  - [Week 4: CPU & Machine Language (Project 5)](#week-4-cpu--machine-language-project-5)  
  - [Week 5: Assembler (Project 6)](#week-5-assembler-project-6)  
  - [Week 6: VM Translator I (Project 7)](#week-6-vm-translator-i-project-7)  
- [Building & Testing](#building--testing)  
- [Next Steps](#next-steps)  
- [License](#license)  

---

## Overview

This repo implements the core hardware and software components of the Hack computer, from elementary gates up through a subset of the VM translator. Completed milestones:

1. **Boolean logic gates**  
2. **Adders & ALU**  
3. **Flip-flops, registers & RAM**  
4. **CPU (hack architecture) & machine language**  
5. **Assembler (hackasm → hack machine)**
6. **VM Translator I (stack arithmetic + memory access)**

---

## Prerequisites

- **Hardware Simulator**, **CPU Emulator**, **Assembler** and **VM Emulator** from the [Nand2Tetris tool suite](https://www.nand2tetris.org/software).  
- Java 8+ (for the simulators)  
- Python 3.7+ (if you’ve implemented assembler/vmtranslator in Python)  

---

## Directory Structure

```plain
/
├── week1/
│   ├── And.hdl
│   ├── Or.hdl
│   ├── Not.hdl
│   └── tests/
│       ├── And.tst
│       └── …
├── week2/
│   ├── HalfAdder.hdl
│   ├── FullAdder.hdl
│   ├── ALU.hdl
│   └── tests/
│       ├── ALU.tst
│       └── …
├── week3/
│   ├── Bit.hdl
│   ├── Register.hdl
│   ├── RAM8.hdl
│   └── tests/
│       └── RAM8.tst
├── week4/
│   ├── CPU.hdl
│   ├── PC.hdl
│   ├── Memory.hdl
│   └── tests/
│       └── CPU.tst
├── week5/
│   ├── Assembler.py        # or Assembler.java
│   ├── HackSymbolTable.py
│   └── tests/
│       └── add.asm, add.hack
└── week6/
    ├── VMTranslator.py     # or VMTranslator.java
    ├── Parser.py
    └── tests/
        ├── StackTest.vm
        └── BasicTest.vm
