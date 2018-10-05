# Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

# Input: A positive integer
# Output: The integer with its digits reversed
# - Zeros are removed from the output

def reversed_number(number)
  digits = number.to_s.reverse.chars
  digits.select { |digit| digit != "0" }.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # Note that zeros get dropped!
p reversed_number(1) == 1
