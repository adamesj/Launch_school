=begin
  Write a class that converts an integer into its roman numeral equivalent.

  I = 1
  V = 5
  X = 10
  L = 50
  C = 100
  D = 500
  M = 1000

  1990 = MCMXC
  1000 = M
  900 = CM (100 - 1000)
  90 = XC

  There is no need to be able to convert numbers larger than about 3000.
=end

require 'pry'

class Integer
  def to_roman
    hundreds_numeral = %w(C CC CCC CD D DC DCC DCCC CM)
    tens_numeral = %w(X XX XXX XL L LX LXX LXXX XC)
    ones_numeral = %w(I II III IV V VI VII VIII IX)

    number = self

    thousands = number / 1000
    hundreds  = number % 1000 / 100
    tens      = number % 1000 % 100 / 10
    ones      = number % 1000 % 100 % 10

    roman_numeral = ''


    thousands.times { roman_numeral << 'M' }
    roman_numeral << hundreds_numeral[hundreds - 1] if hundreds > 0
    roman_numeral << tens_numeral[tens - 1] if tens > 0
    roman_numeral << ones_numeral[ones - 1] if ones > 0
    
    roman_numeral
  end
end

p 241.to_roman