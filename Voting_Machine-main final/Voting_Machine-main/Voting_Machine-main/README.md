
# Voting Machine Verilog Project

This repository contains a Verilog implementation of a voting machine.

## Uses

- Provide a secure and efficient method for conducting electronic voting.
- Demonstrate the application of Verilog in hardware design.

## Advantages

- Enables faster and more accurate vote counting compared to traditional manual methods.
- Enhances accessibility for differently-abled individuals.
- Reduces paper waste and saves resources.
- Allows for easier implementation of additional features like voter authentication.

## Problems Faced Before

- Lack of an efficient and secure voting system.
- Time-consuming manual vote counting process.
- Difficulty in ensuring fairness and accuracy.

## Solution

- The Voting Machine project aims to address the problems mentioned above by implementing an electronic voting system using Verilog.
- We have implemented the voting machine in both Behavioral model and Structural model.
The design was first implemented in behavioral and then in structural using components.

## 1) Behavioral model
The behavioral model is designed by using the finite state machine. This gives a clear understanding of its working. 
The voting machine is designed for 3 candidates with output size of 32 bits. Used the state machine approach comprising of 4 states idle, vote, stop and finish. Runs on clock frequncy 10MHz.

There is another combinational always block that runs on clock signal whereas the always block of state machine works on state and inputs. 
simulated on Multisim 10.4 and Active HDL.

## State Diagram
   
   ![alt text](https://github.com/pratikbhuran/Voting_Machine/blob/main/Images/voting-state-dia.png?raw=true)

## 2) Structural model
It is made by adding an asynchronous reset up counter as its components. The number of counters added dpend upon the number of candidates to vote for.

## Contributions

Contributions are welcome! If you find any issues or have suggestions for improvements, please submit a pull request or open an issue.


