# write a method that takes this string of words and
# returns a string in which the first and last letters of every word is swapped

def swap(string)
  words = string.split
  words.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  words.join(" ")
end

p swap('Abcde')
p swap('Oh what a wonderful day it is')