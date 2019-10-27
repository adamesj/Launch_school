=begin
  An example of sieve's algorithm at work:

  First, generate a list of integers from 2 to 30:

  2  3  4  5  6  7  8  9  10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

  The first number in the list is 2; cross out every 2nd number in the list after 2 
  by counting up from 2 in increments of 2 (these will be all the multiples of 2 in the list):

  2 3 5 7 9 11 13 15 17 19 21 23 25 27 29

  The next number on the list is 3 so cross out every 3rd number (multiples of 3)

  2 3 5 7 11 13 17 19 23 25 29

  The next number on the list is 5 so cross out multiples of 5

  2 3 5 7 11 13 17 19 23 29

  Keep going until you can no longer find any multiples for a given element
=end

require 'byebug'

class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def primes
    numbers = (2..limit).to_a
    # if current element % next element == 0
    # remove from array
    numbers.each_with_index do |current_element, index|
      next if index < 2
      numbers.delete_if {|num| num % current_element == 0}
    end
    numbers
  end
end

sieve = Sieve.new(10)
p sieve.primes
