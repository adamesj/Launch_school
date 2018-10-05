# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise.
# This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters.

# Input: A string of characters.
# Output: True if the string is a palindrome, false otherwise
# - Case insensitive
# - Ignores alphanumeric

def palindrome?(string_or_array)
  string_or_array == string_or_array.reverse
end

def real_palindrome?(string)
  clean_string = string.downcase.delete('^a-z0-9')
  palindrome?(clean_string)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true
p real_palindrome?("Madam, I'm Adam") == true
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
