# CA5: Serial Communication & Data Transmission Controller

This folder contains the fifth Computer Assignment for **Digital Systems I**, Spring 1404.

## Objective
The goal was to design a serial communication controller that integrates the start-sequence detector from CA4 and adds functionality for data transmission, abort sequence detection, and flow control using **SystemVerilog**, **ModelSim**, and **Intel Quartus Prime**.

## Implementation Details
* **FSM Integration:** Reused the start-sequence detector from CA4 to trigger the transmission state.
* **Data Transmission:** Implemented a state machine that transmits data (`rcIn` to `txOut`) for 97 clock cycles upon detecting the start sequence, while managing the `txValid` signal.
* **Abort Logic:** Added a secondary FSM/logic block to detect the abort sequence (complement of the start sequence). Upon detection, transmission stops immediately, and a `txAbort` pulse is issued.
* **Verification (ModelSim):** Developed complex testbenches to simulate serial data streams, verify start/abort sequence detection, and ensure correct timing behavior during transmission.
* **Synthesis & FPGA Analysis (Quartus):** Synthesized the complete controller to analyze the hardware architecture, including RTL views, state machine transitions, and timing constraints on the target FPGA.
