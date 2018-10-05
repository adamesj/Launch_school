require 'pry'
# Write a program that reads the content of a text file and then prints the longest sentece in the file
# based on the number of words. Sentences can end with periods, exclamation marks, or question marks. Spaces or other characters should be treated as
# a word.

# Input: Text file
# - Parse through the text to convert it into a string
# Output: The longest sentence in the text file
# - Punctuation and spaces do not count as part of the sentence.
# - commas count as a word

# A sentence can end in a . ! ?
# Have to split the text according to these rules
text = File.read("sample_text.txt")

def find_the_longest_sentence(passage)
  # Each line in the passage contains a new line character
  new_passage = passage.gsub(/\n/, " ").split(/[!?.](?=\s+\p{Lu})/).map(&:strip)
  longest_sentence = new_passage.max_by {|line| line.split.size}
  longest_sentence.split.size
  # how to split string into sentences?
end

p find_the_longest_sentence(text)
