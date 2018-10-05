require 'pry'

# Fibonacci number is the sum of the two preceding numbers.
# The simplest is the series 1, 1, 2, 3, 5, 8, 13, 21, 34, 55 etc.
# 1, 1 + 1 = 2, 1 + 2 = 3, 2 + 3 = 5, etc.

# Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

# Fibonacci sequence:
# F(1) = 1 ?
# F(2) = 1
# F(3) = 2
# F(4) = 3
# F(5) = 5

# F(n) = F(n - 1) + F(n - 2) where n > 2
# The argument is n

# 2 + 1 = 3

# Properties of recursive methods:

# They call themselves at least once.
# They have a condition that stops the recursion.
# They use the result returned by themselves.

def return_fibonacci_value(fibonacci_index)
  # Condition to stop recursion
  return 1 if fibonacci_index <= 2
  # Because the first two values of the fibonacci sequence are both 1
  # Summing the fibonacci values of the previous two indexes
  binding.pry
  return_fibonacci_value(fibonacci_index - 1) + return_fibonacci_value(fibonacci_index - 2)
  # 2         +  1
  # previous     # next previous
  # F(3)         # F(2)
  # 2            # 1
end

p return_fibonacci_value(4) # 4th number in the sequence which is 3
