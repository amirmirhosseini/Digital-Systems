# CA1: Basic Switch and Gate Structures

This folder contains the first Computer Assignment for **Digital Systems I**, Spring 1404.

## Objective
Design and simulation of logic gates (NOR and OAI) at switch-level, gate-level, and dataflow abstraction levels using **SystemVerilog** and **ModelSim** to analyze propagation delays and functional behavior.

## Implementation Details
* **Switch-Level:** Designed NOR and OAI gates using transistor-level descriptions with specified delays (#(3,4,5) for NMOS and #(5,6,7) for PMOS).
* **Gate-Level & Dataflow:** Implemented the OAI function using discrete NOR gates and `assign` statements to evaluate timing differences.
* **Comparator:** Built a logic function $g()$ using three OAI gates to perform $A > B$ operations.
