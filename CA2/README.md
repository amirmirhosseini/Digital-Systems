This folder contains the second Computer Assignment for **Digital Systems I**, Spring 2025.

## Objective
The goal was to design and simulate a 2-bit digital comparator and cascade it to implement a 4-bit comparator. We utilized **SystemVerilog** and **ModelSim** to analyze propagation delays based on back-annotated timing parameters from transistor-level circuits.

## Implementation Details
* **2-Bit Comparator:** Designed the GT (Greater Than) and EQ (Equal) outputs using `assign` statements, with delays derived from the transistor-level circuits implemented in CA1.
* **4-Bit Comparator:** Cascaded two 2-bit comparator units using standard logic gates to perform multi-bit comparison.
* **Verification:** Developed comprehensive testbenches using `$random`, `repeat`, and arithmetic operations to validate functional correctness and determine the worst-case propagation delay.
