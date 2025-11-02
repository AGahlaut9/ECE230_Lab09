# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Because structural Verilog only describes connections between components, and it can’t easily represent the timing behavior needed for latches. That's why we use sequential logic and storage elements.

### What is the meaning of always @(*) in a sensitivity block?
It means that the block of code should run whenever the value used as an input signal changes. It's purpose it to make sure that our logic stays upto date.

### What importance is memory to digital circuits?
Memory is essential in digital circuits, as it allows for storing and recalling information. It allows us to maintain the state of the system or make any changes later on, based on sequential operations
