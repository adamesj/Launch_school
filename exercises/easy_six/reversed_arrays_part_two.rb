# Input: An array
# Output: A new array with the elements of the original list in reverse order. Do not modify original list

def reverse(array)
  reversed_array = []
  array.length.times do
    reversed_array << array.pop
  end
  p reversed_array
end

reverse([1, 2, 3, 4])