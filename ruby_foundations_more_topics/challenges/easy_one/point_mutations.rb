=begin
  GAGCCTACTAACGGGAT
  CATCGTAATGACGGCCT
  ^ ^ ^  ^ ^    ^^
  Comparing two strings
  If the same index of each string has different elements, add 1 point to the hamming distance
  Count an additional point for each element that is different
  
  If you have two sequences of unequal length, 
  you should compute the Hamming distance over the shorter length.
=end

require 'byebug'

class DNA
  attr_reader :strand

  def initialize(strand)
    @strand = strand.chars
  end

  def hamming_distance(distance)
    strand.zip(distance.chars).delete_if { |element| element.include?(nil)}.map { |x,y| x == y }.count(false)
  end
end

dna = DNA.new('GACTACGGACAGGGTAGGGAAT')
p dna.hamming_distance('GACATCGCACACC')
