# Input: Two arrays
# Output: A single array containing the product of the elements at the same index


def multiply_list(array1, array2)
  array1.zip(array2).map {|pair| pair.inject(:*)}
end

p multiply_list([3, 5, 7], [9, 10, 11])
