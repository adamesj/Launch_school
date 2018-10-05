# Write a method that takes a number as an argument. If the argument is a positive number,
# return the negative of that number. If the number is 0 or negative, return the original number.

# Input: An integer
# - Can be positive, negative, or zero

# Output: The negative equivalent if the integer is positive, otherwise return the same integer.

def negative(number)
  number < 0 ? number : -number
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0
