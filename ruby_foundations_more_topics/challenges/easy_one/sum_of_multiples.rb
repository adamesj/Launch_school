=begin
  Write a program that, given a number, can find the sum of all 
  the multiples of particular numbers up to but not including that number.

  If we list all the natural numbers up to but not including 20 that 
  are multiples of either 3 or 5, we get 3, 5, 6, 9, 10, 12, 15, and 18. 
  The sum of these multiples is 78.

  Write a program that can find the sum of the multiples of a given set of numbers. 
  If no set of numbers is given, default to 3 and 5.
=end

require 'byebug'

class SumOfMultiples
  attr_reader :multiples

  def initialize(*multiples)
    @multiples = multiples.empty? ? [3, 5] : multiples
  end
  
  def self.to(limit)
    return 0 if limit < 2
    numbers = (1...limit).to_a
    numbers.select {|num| (num % 3 == 0 || num % 5 == 0)}.reduce(:+)
  end

  def to(limit)
    return 0 if limit < 2
    numbers = (1...limit).to_a
    selected_multiples = []
    multiples.each do |multiple|
      selected_multiples << numbers.select {|num| num % multiple == 0}
    end
    selected_multiples.flatten.uniq.reduce(:+)
  end
end

p SumOfMultiples.new(4, 6).to(15)
