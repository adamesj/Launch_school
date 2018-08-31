# Write a method that iterates through an array of numbers
# and returns a new array of elements that are summed from the
# original array.

# Input: [2, 5, 13]
# Output: [2, 7, 20]

# [2] => 2
# [2, 5] => 7
# [2, 5, 13] => 20

# First iteration: sum of one element
# Second iteration: sum of two elements
# Third iteration: sum of three elements

# Keep a running sum and add it to a new array

def running_total(numbers)
  current_total = []
  new_array = []
  numbers.each do |num|
    current_total << num
    new_array << current_total.inject(:+)
  end
  new_array
end

p running_total([2, 5, 13])