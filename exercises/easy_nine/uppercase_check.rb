# Write a method that takes a string argument, and returns true if all of the
# alphabetic characters inside the string are uppercase, false otherwise.
# Characters that are not alphabetic should be ignored.

# A string is given as an argument.
# The method should check if all of the characters in the string are uppercase (not lowercase).
# The method should output true if it meets the above condition, false otherwise.
# Non-alphabetic characters should be ignore. This includes numbers and punctuation.

# Input: A string.
# Output: true/false depending on the condition set within the method.

def uppercase?(string)
  # Initialize an array containing all lower letters
  lowercase_characters = ("a".."z").to_a
  # Check if there is a character in the string that is equal to any of the characters in the array
  lowercase_characters.any? {|char| string.include?(char)} ? false : true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
