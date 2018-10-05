# Write a method that takes one argument, a string, and returns the same string with the words in reverse order.

# Input: A string of characters or an empty string
# Output: The order of words should be reversed (not the characters in each word)

# Example: 'Hello World' => "World Hello"

def reverse_sentence(string)
  string.split.sort { |a, b| b <=> a }.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
