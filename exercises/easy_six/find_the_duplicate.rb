# Input: An array containing duplicate elements
# Output: The element that has a duplicate in the array

# Objective: How to compare all objects in an array?

# One other way would be to have a separate array that keeps track of
# which items have been looked at as we iterate through the original array.
# If we ever add the same item twice to this second array, then we know that we have found a duplicate.

def find_dup(array)
  array_copy = []

  array.each do |a|
    if array_copy.include?(a)
      return a
    else
      array_copy << a
    end
  end
end

p find_dup([1, 5, 3, 1])