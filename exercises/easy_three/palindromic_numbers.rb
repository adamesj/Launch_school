# Write a method that returns true if its integer argument is palindromic, false otherwise.
# A palindromic number reads the same forwards and backwards.

# Input: An integer of one or more digits.
# Output: true if the integer is a palindrome, false otherwise.

# Example: 34543 == true

def palindromic_number?(number)
  number.to_s == number.to_s.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
