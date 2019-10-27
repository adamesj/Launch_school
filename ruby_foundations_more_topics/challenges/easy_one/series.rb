require 'byebug'

=begin
  Write a program that will take a string of digits and give you all the possible consecutive number series of length n in that string.

  For example, the string "01234" has the following three digit series:
  - 012
  - 123
  - 234
  
  And the following four digit series:
  - 0123
  - 1234
=end

class Series
  attr_reader :sequence

  def initialize(sequence)
    @sequence = sequence
  end

  def slices(n)
    digits = sequence.split(//).map(&:to_i)
    raise ArgumentError if n > digits.length
    # return all combinations of n digits within the digits array
    # index 0, index 0, 1
    # index 1, index 1, 2
    # index 2, index 2, 3
    # index 3, index 3, 4, index.nil? (stop)
    # [0, 1], [1, 2], [2, 3], [3, 4]
    # at the current index, if element and n number of following elements length is equal to n, shovel into array
    array = []
    digits.each_with_index do |digit, index|
      array << digits[index..index + n - 1] if digits[index..index + n - 1].size == n
    end
    array
  end
end

series = Series.new('01234')
series.slices(1)
