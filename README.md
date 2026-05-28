# Digital Systems I (ECE 894) - Spring 2025

This repository serves as a comprehensive collection of all Computer Assignments (CA) completed for the **Digital Systems I** (ECE 367 / ECE 894) course at the University of Tehran.

## Repository Overview
The coursework focuses on industry-standard digital design flows, covering everything from transistor-level logic to FPGA synthesis.

### Project Assignments
* **[CA1: Basic Switch and Gate Structures](CA1/)**
  * Switch-level, Gate-level, and Dataflow modeling of OAI and NOR gates.
  * Timing analysis ($T_{ol}$ and $T_{o0}$) and functional verification.

* **[CA2: 2-Bit and 4-Bit Comparator Design](CA2/)**
  * Cascading logic gates to build multi-bit comparators.
  * Back-annotation of delays from transistor-level circuits to higher-level models.

* **[CA3: Logic Block Synthesis & Counters](CA3/)**
  * Arithmetic/Logic Unit (ALU) design and synthesis using **Yosys**.
  * Sequential logic implementation (Latches, Flip-Flops) and clocked feedback.

* **[CA4: FSMs & Sequence Detectors](CA4/)**
  * Moore Machine FSM design for sequence detection.
  * Hardware analysis, RTL mapping, and timing verification in **Quartus**.

* **[CA5: Serial Communication Controller](CA5/)**
  * Advanced Serial Transmitter design integrated with CA4 sequence detectors.
  * Flow control, Abort-sequence logic, and FPGA floor-planning.

## Tools & Methodology
* **Design:** SystemVerilog
* **Simulation:** ModelSim (Pre & Post-synthesis)
* **Synthesis:** Intel Quartus Prime, Yosys (for CA3)

## Documentation
Final reports for each assignment are provided in PDF format within their respective folders.
