# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# Input: A positive integer
# Output: The sum of adding each digit that makes up the integer

# Example: 23 => 5

def sum(number)
  number.to_s.chars.map {|num| num.to_i}.inject(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
