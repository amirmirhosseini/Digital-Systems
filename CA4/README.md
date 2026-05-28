# CA4: FSMs and Sequence Detectors

This folder contains the fourth Computer Assignment for **Digital Systems I**, Spring 2025.

## Objective
The goal was to design and implement a sequence detector using **Moore Machine** FSM and a counter circuit, followed by synthesis and timing analysis using **Intel Quartus Prime**.

## Implementation Details
* **FSM Design:** Developed a Moore-type Finite State Machine to detect a specific input sequence ('1' followed by six '0's and a final '1').
* **Counter Implementation:** Designed a divide-by-6 counter to track the sequence progress, which is reset and utilized by the FSM controller.
* **Simulation (Pre-Synthesis):** Performed comprehensive functional verification in **ModelSim** using detailed testbenches to validate the FSM logic and counter transitions against expected behaviors.
* **Synthesis & Timing Analysis (Post-Synthesis):** Imported the design into **Intel Quartus Prime**. Analyzed the synthesized hardware, including:
    * **RTL View:** Understanding the logic structure and state transitions.
    * **Technology Map Viewer:** Identifying hardware cells, including memory elements (registers) versus combinational logic.
    * **Timing Analysis:** Evaluating propagation delays and ensuring the design meets performance constraints on the target FPGA.
