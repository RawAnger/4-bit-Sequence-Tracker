# 4-bit Sequence Tracker
## Sequential Circuit Examle Project
This project implement a synchronous sequential circuit which detects two different 4-bit sequences, A and B. 
A is chosen as 2 in binary, which is 0010, and B is chosen as 4 in binary, which is 0100.

__A and B may overlap.__  

The circuit tracks both sequences simultaneously, and if any of the sequences is detected, it sets output Y to 1. If the same sequence occurs again, the circuit enters a lock state that prevents the output changing from 1. This lock state can only be released by a reset signal. 

### Design Steps
1. State Diagram

2. State Table
3. State Reduction
4. Implementation
5. Simulation
