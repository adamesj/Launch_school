require 'pry'

# Write a method that takes a sentence string as input,
# and returns the same string with any sequence of the words
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

NUMBERS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

# Input: a string that includes numbers
# Output: The string with the numbers converted into digits

def word_to_digit(string)
  words = string.split
  words.each do |word|
    case
    when word.include?('zero')
      word.gsub!('zero', '0')
    when word.include?('one')
      word.gsub!('one', '1')
    when word.include?('two')
      word.gsub!('two', '2')
    when word.include?('three')
      word.gsub!('three', '3')
    when word.include?('four')
      word.gsub!('four', '4')
    when word.include?('five')
      word.gsub!('five', '5')
    when word.include?('six')
      word.gsub!('six', '6')
    when word.include?('seven')
      word.gsub!('seven', '7')
    when word.include?('eight')
      word.gsub!('eight', '8')
    when word.include?('nine')
      word.gsub!('nine', '9')
    end
  end
  words.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')