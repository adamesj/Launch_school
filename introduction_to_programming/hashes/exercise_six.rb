require 'pry-nav'

# Write a program that prints out groups of words that are anagrams.
# Anagrams are words that have the same exact letters in them but in a different order.

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# Input: array of words
# Output: groups of words (multiple arrays). Each group will contain the same letters in different combinations

# If demo is the key, then the value would be all of the elements that are anagrams of demo


# iterate over array
# sort each word into alphabetical order
# if key exists, append current word into value (array)
# otherwise, create a new key with this sorted word

anagrams = {}

words.each do |word|
  key = word.split('').sort.join # sorts every string alphabetically
  if anagrams.has_key?(key) # if the anagrams hash contains the key intialized above
    anagrams[key].push(word) # push the word into the array value of the key?
  else
    anagrams[key] = [word] # the value is an array which is why we can use the push method above
  end
end

p anagrams

# anagrams.each_value do |v|
#   puts "--"
#   puts v
# end


