require 'pry'
# Write a method that takes a single integer as an argument,
# and returns the next featured number that is greater than the argument.
# Issue an error message if there is no next featured number.

=begin
  input: A positive integer (number of digits do not matter)
  output: A an integer that is the next 'featured' number greater than the argument
  rules:
    - A featured number is an odd number that is a multiple of 7
    - Whose digits occur exactly once each (i.e. 49, 12, 145, etc.)

  algorithm:
    - count up from the argument
    - if the number is odd and number % 7 == 0
    - the max should be 999_999_987
=end

def duplicates?(number)
  digits = number.to_s.split("")
  digits.detect {|digit| digits.count(digit) > 1} # passes each element to the block and returns for which the block is not false.
end

def featured(number)
  max_value = 999_999_987
  return "There is no possible number that fulfills those requirements" if number >= max_value
  (number + 1).upto(max_value) do |num| # number + 1 because number would return the same number
    if duplicates?(num) # skip if there are duplicate digits
      next
    elsif num.odd? && num % 7 == 0
      return num # return the next featured number
    end
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987)
