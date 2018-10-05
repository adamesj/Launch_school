# Input: Two arrays containing integers.
# Output: The product of every pair of numbers that can be formed between the elements of the two Arrays.

def multiply_all_pairs(array1, array2)
  pairs = array1.product(array2)
  pairs.map {|pair| pair.inject(:*)}.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])