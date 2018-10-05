# Write a method that can rotate the last n digits of a number.
# For example: (735291, 2) => 735219
# Notice how 9 and 1 switched positions
# Input: a positive integer representing the number that will be rotated and an integer representing the last n digits that will be rotated.
# Output: rotated array.
# - If the second argument is 1, then return the original number.
# May use the previous rotate method.

def rotate_array(array)
  new_array = []
  new_array.push(array[1..-1]).push(array[0]).flatten
end

def rotate_rightmost_digits(value_1, value_2)
  # Convert first argument into an array
  number_array = value_1.to_s.split("")
  # rotate the array by the number of times specified in value_2 unless value_2 is equal to 1
  if value_2 > 1
    number_array[-value_2..-1] = rotate_array(number_array[-value_2..-1]) # rotates the last n digits starting from the value passed in as the second argument
    number_array.join.to_i
  else
    number_array.join.to_i
  end
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
