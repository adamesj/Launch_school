require 'byebug'

class Trinary
  attr_reader :trinary_string

  BASE = 3
  PATTERN = /[a-zA-Z]{1}\d{1}|[8-9]/

  def initialize(trinary_string)
    @trinary_string = trinary_string =~ PATTERN ? [0] : trinary_string.split(//).map(&:to_i)
  end

  def to_decimal
    current_exponent = trinary_string.size - 1
    sums = []
    trinary_string.each do |digit|
      sums << digit * (BASE**current_exponent)
      current_exponent -= 1
    end
    sums.inject(:+)
  end
end

trinary = Trinary.new('10')
p trinary.to_decimal