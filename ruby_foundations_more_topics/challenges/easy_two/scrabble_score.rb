=begin
  Write a program that, given a word, computes the scrabble score for that word.

  Letter                            Value
  A, E, I, O, U, L, N, R, S, T       1
  D, G                               2
  B, C, M, P                         3
  F, H, V, W, Y                      4
  K                                  5
  J, X                               8
  Q, Z                               10
  
  Input: A string
  Output: An integer representing the total amount of points each character
  in the string equates to when summed together.

  * nil = 0, '' = 0, \t\n = 0
  * uppercase and lowercase should be treated the same
  * the string must be all characters (no punctuation in between)

  Algorithm:

  1) Upon initialization, if word is nil, set @word to nil, otherwise set it to word.downcase
  2) Data structure will be a hash where the keys are arrays and the values are the
    values above.
  3) Given a set of characters, iterate through each character with the map method, 
    if the character is included in an array that is a key in the hash, 
    replace the character with the value.
  4) Sum and return all values in the mapped array.
=end

class Scrabble
  ALPHABET = {  ['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'] => 1, 
                ['d', 'g'] => 2, ['b', 'c', 'm', 'p'] => 3,
                ['f', 'h', 'v', 'w', 'y' ] => 4, ['k'] => 5, 
                ['j', 'x'] => 8, ['q', 'z'] => 10
              }

  PATTERN = /[\s.!?\\,;-]/

  def initialize(word)
    @word = word.nil? ? '' : word.downcase
    @word = @word.scan(PATTERN).empty? ? @word.downcase : ''
  end

  def self.score(word)
    self.new(word).score
  end

  def score
    return 0 if @word.empty?
    scores = []
    @word.chars.each do |word|
      ALPHABET.each_pair { |set, value| scores << value if set.include?(word) }
    end
    scores.reduce(:+)
  end
end

scrab = Scrabble.new(nil)
p scrab.score
