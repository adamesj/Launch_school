# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# Input: An integer
# Output: An array containing each digit in the integer
# - each element has to be an integer

# Example: 425
#          => [4, 2, 5]

def digit_list(number)
  number.to_s.chars.map {|num| num.to_i} # alternatively you can use .map(&:to_i)
end

p digit_list(12345)
p digit_list(7)
p digit_list(375290)
