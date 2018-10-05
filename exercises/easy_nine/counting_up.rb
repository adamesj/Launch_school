# Write a method that takes an integer argument,
# and returns an Array of all integers, in sequence, between 1 and the argument.

# Input: A positive integer excluding zero.
# Output: An array of all integers between 1 and the integer as an argument.

def sequence(number)
  list = []
  1.upto(number) { |num| list << number }
  list
end

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
