# Write a method that returns an Array that contains every
# other element of an Array that is passed in as an argument.

# Input: An array of elements (can be empty, strings, or integers)
# Output: A copy of the original array containing the odd indexed elements.
# Good use case for each_with_index method.

def oddities(array)
  odd_array = []
  array.each_with_index { |el, index| odd_array << el if index.even? }
  odd_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
