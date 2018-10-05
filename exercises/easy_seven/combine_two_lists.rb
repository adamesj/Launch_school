# Input: Two arrays
# Output: One array containing the combination of the two arrays, with the elements taken in alternation.

# Example: [1, 2, 3], ['a', 'b', 'c'] => [1, 'a', 2, 'b', 3, 'c']

# zip converts the argument to an array then merges it with the array that called the method


def interleave(array1, array2)
  array1.zip(array2).flatten
end

interleave([1, 2, 3], ['a', 'b', 'c'])