# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s always starting with 1.
# The length of the string should match the given integer.

# Input: A positive integer
# Output: A sequence of 1s and 0s, starting with 1 that matches the length of the integer

# Example: 6 => '101010'

def stringy(number)
  sequence = ''
  number.times do |i| # This variable represents the current iteration so we can check if it is odd and add '0'
    i.odd? ? sequence << '0' : sequence << '1'
  end
  sequence
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
