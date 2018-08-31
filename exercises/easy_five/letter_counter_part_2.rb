require 'pry'

# Modify word_sizes to exclude non letters in word size

def word_sizes(string)
  count = 0
  sizes = {}

  words = string.split

  lengths = words.map do |word|
    word.delete!('^A-Za-z')
    word.length
  end

  words.each do |word|
    count = 0
    word.delete('^A-Za-z')
    lengths.each do |length|
      if word.length == length
        count += 1
        sizes[length] = count
      end
    end
  end

  sizes
end

p word_sizes("What's up doc?")
p word_sizes('Hey diddle diddle, the cat and the fiddle!')