# Journal

Use this as a space to address problem solving and reflect from the challenge

## Problem Solving Template

1. Rewrite the question in your own words
    1. Find the first twenty five numbers where the number plus it's inverse is greater than 1,000
1. Answer these questions:
    1. What assumptions will you make about this problem if you cannot ask any more clarifying questions?
        1. I will assume for this challenge that it is greater than or equal to 1,000 in case that edge case comes up
        1. Assume that I can use built in ruby methods
    1. What are your reasons for making those assumptions?
        1. Reasons for making that assumption is just so that I have an answer
    1. What are your initial thoughts about this problem? (high level design, 2-3 sentences)
        1. Initial thoughts are that this is going to be complicated and hard to TDD since I don't know the integers that I am supposed to end up with. At a high level, I need to design something that finds all palindromes between two ranges.
1. Identify the elements of this problem
    - [x] Searching of Data
    - [x] Sorting of Data
    - [ ] Pattern Recognition
    - [ ] Build/Navigate a Grid
    - [x] Math
    - [ ] Language API knowledge
    - [ ] Optimization
1. Consider which data structure(s) do you think you’ll use? What pros/cons do you see with that choice?
    1. Arrays. I don't know what other data structures I would use?
1. Write out a few lines of initial pseudocode: (mid-level design, NOT REAL CODE)

    ```ruby
    # generate all palindromes between 0-1000
    # create nested arrays of the palindromes
    # add the two numbers together
    # store that in the array as a third element
    # check to see if the third is element is greater or equal to 1000
    # if it is, shovel it into the output array
    # return the output array with a limit of 25 integers
    ```

1. Write your implementation code and test your solution (low-level design)

## Reflection Questions

- What worked well in your process?
  - Taking the time to pseudocode out the solution was really helpful to avoide getting overwhelmed.
- What was difficult/where did you struggle?
  - I struggled in applying TDD because I wasn't sure exactly what the solution was going to be.
- What feedback/discussion did you have with your peer?
  - The feedback and discussion with the group was incredibly helpful because it helped to clarify exactly what the question was adking
- Is there anything you want to change about your approach to the next technical challenge?
  - After going through the feedback with the group, I think what I will do is take some more time to ask clarifying questions and make sure that I really understand the prompt.

## If this isn’t your first technical challenge

- Were you able to improve your approach? What went better?
  - Not being overwhelmed and pseudocoding out the solution
