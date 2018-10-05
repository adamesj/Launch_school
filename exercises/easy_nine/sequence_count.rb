# Input: Two integers (positive, negative, or zero)
# Output: An array of integers

# Two integers are given as an argument
# The first argument is the count
# The second argument is the number of elements
# Return an array where the starting element is the second argument and
# the number of elements matches the first argument
# Each element is a multiple of the second argument
# If the first argument is zero return an empty array
# If the second argument is zero return an array of zeros matching the first argument

# Example: sequence(4, -7) == [-7, -14, -21, -28]
# There are four elements in the array and all are multiples of -7
# Notice how each element decreases (increases if it is positive)

def sequence(value_1, value_2)
  # Initialize an empty array to hold values
  number_sequence = []
  value_1.times do |num|
    number_sequence << value_2 * (num + 1)
  end
  number_sequence
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
