=begin
  Consider a character set consisting of letters, a space, and a point. 
  Words consists of one or more, but at least 20 letters.

  An input text consists of one or more words separated from each other by one or more
  spaces and terminated by 0 or more spaces followed by a point.

  Input should be read from, and including, the first letter of the first word, up to
  and including the terminating point. The output text is to be produced such that successive
  words are separated by a single space with the last word being terminated by a single point.
  Odd words are copied in reverse order while even words are merely echoed.

  For example, the input string:

  "whats the matter with kansas." becomes "whats eht matter htiw kansas."

  BONUS POINTS: the characters must be read and printed one at a time.

  Input: a string of characters separated by a space and finishing with a period.
  Output: a copy of the string where words with an odd index are reversed in order.

  Algorithm:

  Turn the input string into an Array of words using the split method.

  Iterate through each word using each_with_index. If the index is odd,
  reverse the order of the characters for that element.

  ** Need to account for punctuation. If an odd indexed word has a punctuation mark, it should
  be reversed and returned with the punctuation mark at the end.

  ["I'm", "the", "one."]

  I'm > m'I

  Words with punctuation need to be reversed without the punctuation being affected.
=end

require 'pry'

class OddWords
  attr_reader :input_string

  PATTERN = /(?!')\p{P}/

  def initialize(input_string)
    @input_string = input_string
  end

  def reversed_order
    input_string.split(" ").each_with_index do |word, index|
      if index.odd?
        if word.scan(PATTERN).empty?
          input_string.sub!(word, word.reverse)
        else
          input_string.sub!(word[0..-2], word[0..-2].reverse)
        end
      end
    end
    input_string
  end
end

odd_words = OddWords.new("Here I'm the one.")
p odd_words.reversed_order
