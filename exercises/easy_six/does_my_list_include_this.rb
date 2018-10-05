# Write a method named include? that takes an Array and a search value as arguments.
# This method should return true if the search value is in the array, false if it is not.

# Input: Array and search value.
# Output: true if search value is in array, false otherwise.


# Possible to use the Enumerable#any to see if any element in the array is equal to the search value


def include?(array, search_value)
  array.any? { |element| element == search_value }
end

p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6)
p include?([], 3)
p include?([nil], nil)
p include?([], nil)