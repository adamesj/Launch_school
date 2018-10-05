require 'pry'

# Rewrite the recursive fibonnaci method so that it computes its results
# without recursion.

# Fibonacci number is the sum of the two preceding numbers.
# The simplest is the series 1, 1, 2, 3, 5, 8, 13, 21, 34, 55 etc.
# 1, 1 + 1 = 2, 1 + 2 = 3, 2 + 3 = 5, etc.

# Input: A positive integer that represents the index in the fibonacci sequence
# Output: The integer that represents the value at the index passed in

def fibonacci(index)
  # recursive formula fibonacci(index - 1) + fibonacci(index -2)
  first, last = [1, 1] # assigns variable first to 1 and variable last to 1. This represents the first two numbers in the sequence.
  3.upto(index) do # iterate from the third number in the sequence up to the argument
    first, last = [last, first + last]
  end
  last
end

p fibonacci(5)

# 5 - 1 + 5 - 2
# 4 + 3

