# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names: Trace Hughey, Christopher Smith

## Summary

In this lab we learned about the inner workings of finite state machines. We learned how to create one, namely that a state machine is any machine that has a series of states that can be transitioned between using inputs. Every path must lead somewhere, and it's a state machine no matter how complex so long as every state leads to another state.

## Lab Questions
### Compare and contrast One Hot and Binary encodings
Binary is more traditional and less overwhelming but requires more steps because of the multiple tables you must use as you've broken apart the equations. One hot is different being that it combines all inputs in one hot mess of a table/code (hence the name). They both reach the endpoint but one is more messy but faster to code and the other is very step by step and slower to code.

### Which method did your team find easier, and why?
One hot is the one we found easier, because we don't have any hardware restrictions and can just use five D flip-flops.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
One hot is the one you use if you have no hardware restrictions, it's messier and can use a lot more flip-flops if used on large scale. Binary is much more in depth doing all the logic step by step, using less flip-flops but being harder to do.
