require 'byebug'

class Octal
  attr_reader :octal_string

  BASE = 8
  PATTERN = /[a-zA-Z]{1}\d{1}|[8-9]/

  def initialize(octal_string)
    @octal_string = octal_string =~ PATTERN ? [0] : octal_string.split(//).map(&:to_i)
  end

  def to_decimal
    current_exponent = octal_string.size - 1
    sums = []
    octal_string.each do |digit|
      sums << digit * (BASE**current_exponent)
      current_exponent -= 1
    end
    sums.inject(:+)
  end
end

octal = Octal.new('abc1z')
p octal.to_decimal
