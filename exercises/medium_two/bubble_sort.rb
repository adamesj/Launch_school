# Write a method that does a bubble sort of an Array.
# The method will mutate the array passed in as an argument.

# A bubble sort works by making multiple iterations through the Array.
# On each iteration, each pair of consecutive elements is compared.
# If the first of the two elements is greater than the second, then the two elements are swapped.
# This process is repeated until a complete iteration is made without performing any swaps.

# Example of how to swap elements:
# array[0], array[1] = array[1], array[0]


=begin
  input: An array of integers or strings
  output: The mutated array with the integers or strings sorted from lowest to highest or alphabetically
  rules:
    - There will always be at least two integers
    - You can stop iterating the first time going through the array without making swaps
    - This means the array is sorted
  algorithm:
    - Initialize a variable called current_element and set it equal to the element at index 0
    - Use current_element to compare current_element with each element starting from index 1 up to (array.length - 1)
    - If current_element is greater than the element at the next index, swap positions
    - Else move on to the next element
    - After the pass is made, change current_element to the element at the next index
    - Repeat this process until current_element is equal to (array.length - 1)
=end

def bubble_sort!(array)
  last_index_position = (array.length - 1)
  loop do
    index_position = 0
    swapped = false
    loop do
      break if index_position == last_index_position
      if array[index_position] > array[index_position + 1]
        array[index_position], array[index_position + 1] = array[index_position + 1], array[index_position]
        swapped = true
      end
      index_position += 1
    end
    break unless swapped
  end
  array
end

p bubble_sort!([6, 2, 7, 1, 4])
p bubble_sort!([5, 3])
p bubble_sort!(%w(Sue Pete Alice Tyler Rachel Kim Bonnie))



