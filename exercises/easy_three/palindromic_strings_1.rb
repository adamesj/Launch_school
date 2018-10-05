# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise.
# A palindrome reads the same forward and backward.

# Input: A string of characters.
# Output:
# - true if the string is a palindrome, false otherwise.
# - take into account case and punctuation

def palindrome?(string_or_array)
  string_or_array == string_or_array.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false
p palindrome?("madam i'm adam") == false
p palindrome?('356653') == true
p palindrome?([2, 3, 3, 2]) == true

# Further Exploration: Write a method that determines if an array is palindromic
# The above method can be used with a string or array because both classes have a reverse method
