# CA3: Logic Block Synthesis, Latches, and Clocked Feedback

This folder contains the third Computer Assignment for **Digital Systems I**, Spring 2025.

## Objective
The goal was to design and synthesize complex logic blocks using **Yosys**, implement sequential elements (Latches and Flip-Flops) with annotated timing, and construct a 4-mode counter circuit.

## Implementation Details
* **Logic Block Synthesis:** Developed a 4-mode arithmetic/logic unit (incrementer, decrementer, pass-through). Synthesized the design using **Yosys** and compared pre-synthesis vs. post-synthesis (netlist) simulation results.
* **Sequential Logic:** Designed SR-latches and D-latches using NAND primitives with switch-level delay annotations.
* **Registers & Counters:** Constructed 8-bit registers using D-latches and Master-Slave D Flip-Flops. Cascaded the logic block and register units to build a 4-mode 8-bit counter and a 16-bit cascaded counter.
* **Verification:** Utilized **ModelSim** with advanced testbenches (`$random`, `repeat`) to validate functional correctness and verify synthesized timing behaviors.
