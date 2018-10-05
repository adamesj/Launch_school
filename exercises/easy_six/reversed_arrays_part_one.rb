require 'pry'
# Input: an array
# Output: contents of the array reversed (cannot use the array.reverse method)
# [1, 2, 3, 4] => [4, 3, 2, 1]

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  p array
end

reverse!([1, 2, 3, 4])


