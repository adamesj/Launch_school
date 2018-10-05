# Input: An array of numbers
# Output: The sum of each leading subsequence for the array

# Ex: 3, 5, 2 => 3 + (3 + 5) + (3 + 5 + 2)

# Shovel each sum into an array then some all of the elements

def sum_of_sums(array)
  total = []
  total << array[0]
  count = 1
  until count == (array.length)
    total << array[0..count].inject(:+)
    count += 1
  end
  total.inject(:+)
end

p sum_of_sums([1, 2, 3, 4, 5])
