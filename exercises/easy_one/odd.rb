# Write a method that takes an integer as an argument, which may be positive, negative or zero.
# This method will return true if the number's absolute value is odd

# Input: An integer value
# - can be positive
# - can be negative
# - can be zero

# Output: true if the absolute value is odd
# - An odd number is an integer which is not a multiple of 2
# - number % 2 != 0


def is_odd?(number)
  number % 2 != 0
end

puts is_odd?(2)

# * Bonus, rewrite is_odd? to use Integer#remainder

def is_odd?(number)
  number.remainder(2) == 1
end

puts is_odd?(7)
