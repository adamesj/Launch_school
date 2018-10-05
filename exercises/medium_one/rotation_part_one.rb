# Write a method that rotates an array by moving the first element to the end of the array.
# The original array should not be modified.

# An array of integers or strings are given as an argument
# The first element is removed from the array and placed at the end
# This operation should not modify the original array
# Cannot use the rotate built in method

def rotate_array(array)
  new_array = []
  new_array.push(array[1..-1]).push(array[0]).flatten
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
