# Input: a string of words
# Output: each word in the string capitalized, special characters do not count
# so a word in quotes will not be capitalized

def word_cap(string)
  split_words = string.split
  split_words.each {|word| word.capitalize!}
  puts split_words.join(" ")
end

word_cap('this is a "quoted" word')