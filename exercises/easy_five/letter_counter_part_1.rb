require 'pry'

# Write a method that takes a string with one or more space separated words
# and returns a hash that shows the number of words of different sizes.

def word_sizes(string)
  # detect number of words in string
  # each word length will be the keys
  # Add to the value if the key is equal to the word length
  count = 0
  sizes = {}

  words = string.split

  lengths = words.map {|word| word.length }

  words.each do |word|
    count = 0
    lengths.each do |length|
      if word.length == length
        count += 1
        sizes[length] = count
      end
    end
  end

  sizes
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')