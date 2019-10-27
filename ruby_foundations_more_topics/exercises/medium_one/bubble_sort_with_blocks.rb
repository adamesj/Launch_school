=begin
  Below we have our previous implementation of our bubble_sort! method

  algorithm:
    - Initialize a variable called current_element and set it equal to the element at index 0
    - Use current_element to compare current_element with each element starting from index 1 up to (array.length - 1)
    - If current_element is greater than the element at the next index, swap positions
    - Else move on to the next element
    - After the pass is made, change current_element to the element at the next index
    - Repeat this process until current_element is equal to (array.length - 1)

  Adjust the bubble_sort! method to take an optional block that determines which of two consecutive elements will appear first in the results.

  Examples:

  array = [5, 3]
  bubble_sort!(array)
  array == [3, 5]

  array = [5, 3, 7]
  bubble_sort!(array) { |first, second| first >= second }
  array == [7, 5, 3]
=end

def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      if block_given?
        next if yield(array[index - 1], array[index])
      else
        next if array[index - 1] <= array[index]
      end

      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end

# Regardless of whether a block is provided, we need to compare two elements -- the previous element in the Array, and the current element, 
# based on the index variable. If no block is given, we can compare the values directly using <=; otherwise, 
# we need to yield both elements to the block, and examine the return value of the block.

array = [5, 3, 7]
bubble_sort!(array) { |first, second| first >= second }
p array == [7, 5, 3]
