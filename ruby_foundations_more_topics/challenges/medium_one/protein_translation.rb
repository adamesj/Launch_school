=begin
  Lets write a program that will translate RNA sequences into proteins. 
  RNA can be broken into three nucleotide sequences called codons, 
  and then translated to a polypeptide like so:

  RNA: "AUGUUUUCU" => translates to

  Codons: "AUG", "UUU", "UCU"
  => which become a polypeptide with the following sequence =>

  Protein: "Methionine", "Phenylalanine", "Serine"

  Input: A string representing a RNA sequence
  Output: The amino acid that corresponds to the sequence (returned as a string)

  AUG	                Methionine
  UUU, UUC	          Phenylalanine
  UUA, UUG	          Leucine
  UCU, UCC, UCA, UCG	Serine
  UAU, UAC	          Tyrosine
  UGU, UGC	          Cysteine
  UGG	                Tryptophan
  UAA, UAG, UGA	      STOP
=end

require 'pry'

class InvalidCodonError < StandardError; end

class Translation
  AMINO_ACIDS = { ['AUG'] => 'Methionine', ['UUU', 'UUC'] =>  'Phenylalanine',
                  ['UUA', 'UUG'] => 'Leucine', 
                  ['UCU', 'UCC', 'UCA', 'UCG'] => 'Serine',
                  ['UAU', 'UAC'] => 'Tyrosine', 
                  ['UGU', 'UGC'] => 'Cysteine', ['UGG'] => 'Tryptophan', 
                  ['UAA', 'UAG', 'UGA'] => 'STOP' }

  def self.of_codon(codon)
    # iterate through hash
    # if the key includes the codon, return the value.
    AMINO_ACIDS.each do |codon_sequence, amino_acid|
      return amino_acid if codon_sequence.include?(codon)
    end
  end

  def self.of_rna(strand)
    # need to divide the strand into groups of three
    # convert strand into array
    # initialize an empty string that will be used as the return value
    # use each_slice(3) to divide the strand into sequence of three characters
    # repeat the same method as above for each sequence and add the amino_acid to a string
    raise InvalidCodonError unless AMINO_ACIDS.any? { |codon_sequence, amino_acid| codon_sequence.include?(strand) }
    amino_acids = []
    strands = strand.split(//).each_slice(3).to_a.map(&:join)
    strands.each do |strand|
      AMINO_ACIDS.each do |codon_sequence, amino_acid|
        if codon_sequence.include?(strand) && amino_acid != 'STOP'
          amino_acids << amino_acid
        elsif codon_sequence.include?(strand) && amino_acid == 'STOP'
          return amino_acids
        end
      end
    end
    amino_acids
  end
end

p Translation.of_rna('CARROT')