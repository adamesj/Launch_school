# Use the each_with_index method to iterate through an array of your creation
# that prints each index and value of the array.


numbers = ["pizza", "chicken", "pasta", "apples", "oranges"]

numbers.each_with_index {|num, index| puts "#{num} is at index #{index}!" }