# Double numbers have the same sequence of digits on the right and left sides.
# Look at the following examples:
# 44, 3333, 103103, 7676

# Write a method that returns 2 times the number provided as the argument, unless
# the number is a double number which will be returned as is.

# Input: An integer, for the sake of this exercises let's stick with a positive integer.
# Output:
# - If the integer is not a "double number" return the product of the integer times 2
# - Otherwise return the integer
# - Single digits should also be doubled

# 012
# 345

def twice(number)
  number_string = number.to_s
  half = (number_string.length / 2)
  if (number_string[0..(half - 1)] == number_string[half..-1]) && (number_string.length > 1)
    number
  else
    number * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
