=begin
  Write a program that given a phrase can count the occurences of each word in that phrase.
  
  Example input: "olly olly in come free"
  Expected output: (should return a hash where the key is the word and the value is the count)

  olly: 2
  in: 1
  come: 1
  free: 1
=end

class Phrase
  attr_reader :words

  def initialize(words)
    @words = words.scan(/\b[\w']+\b/)
  end

  def word_count
    occurences = {}
    formatted_words = words.delete_if { |word| word.empty? }.map(&:downcase)
    formatted_words.each do |word|
      occurences["#{word}"] = formatted_words.count(word)
    end
    occurences
  end
end

phrase = Phrase.new("Louis' classroom")
p phrase.word_count
