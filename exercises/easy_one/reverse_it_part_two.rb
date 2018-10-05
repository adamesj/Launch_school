# Write a method that takes one argument, a string containing one or more words, and
# returns the given string with all five or more letter words reversed.

# Input: a string of words
# Output: each word in the string with its characters reversed
# - Only words that have 5 characters or more will be reversed

# Example: 'Professional' => lanoisseforP

def reverse_words(string)
  new_string = string.split.each do |str|
    str.reverse! if str.length >= 5
  end
  new_string.join(" ")
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
