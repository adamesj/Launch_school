# Write a method that takes an integer as argument, and returns the maximum rotation of that argument.
# Input: A positive integer
# Ouput: The number passed after it has gone through its maximum rotation

# For example:

# 735291
# first rotation
# 352917
# keep the first digit
# 329175
# keep the first two digits
# 321759
# keep the first three digits
# 321597
# keep the first four digits
# 321579 maximum rotation

def rotate_array(array)
  new_array = []
  new_array.push(array[1..-1]).push(array[0]).flatten
end

def rotate_rightmost_digits(value_1, value_2)
  number_array = value_1.to_s.split("")
  if value_2 > 1
    number_array[-value_2..-1] = rotate_array(number_array[-value_2..-1])
    number_array.join.to_i
  else
    number_array.join.to_i
  end
end

def max_rotation(number)
  # rotate number to the left
  all_digits = number.to_s.length
  all_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

p max_rotation(735291)
