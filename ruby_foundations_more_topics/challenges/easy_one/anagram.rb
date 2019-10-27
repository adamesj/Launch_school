=begin
  Write a program that, given a word and a list of possible anagrams, 
  selects the correct sublist that contains the anagrams of the word.

  For example, given the word "listen" and a list of candidates like "enlists" "google" "inlets" "banana" 
  the program should return a list containing "inlets". 
  Please read the test suite for exact rules of anagrams.

  An anagram is a word or phrase formed by rearranging the letters of a different word or phrase, 
  typically using all the original letters exactly once

=end

require 'byebug'

class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(list)
    list.delete_if { |list_item| list_item.downcase == word }
    list.select { |list_item| sorted(list_item.downcase) == sorted(word.downcase) }
  end

  def sorted(word)
    word.chars.sort.join
  end
end

detector = Anagram.new("Orchestra")
p detector.match %w(cashregister Carthorse radishes)
