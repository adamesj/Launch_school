# In this exercise, you are going to compute a method that
# returns the last digit of the nth Fibonacci number.

# Input: A positive integer that represents the index in the fibonacci sequence
# Output: The last digit of the integer that represents the value at the index passed in

def fibonacci_last(index)
  first, last = [1, 1]
  3.upto(index) do
    first, last = [last, first + last]
  end
  last_digit = last.to_s.split("").last.to_i
end

p fibonacci_last(123456789)
