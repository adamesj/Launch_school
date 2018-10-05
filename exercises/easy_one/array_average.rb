# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array. Numbers will always be positive integers.

# Input: An array of positive integers
# Output: An integer represent the average

# Example: [1, 5, 87, 45, 8, 8] => 25

# Calculating average:
# - Add all numbers then divide by the amount of numbers


def average(numbers)
  numbers.inject(:+) / numbers.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
