=begin

  Given a collection of integers

  1) sum the value of all odd placed integers
  2) sum the value of all even placed integers
   - Each even placed integer will be doubled. If the result is a double-digit number,
   - sum the two digits together.
   - Once the even placed integers have been doubled, sum all values
  
  3) sum the value of all odd placed integers and all even placed integers
  4) Check if the result is divisible by 10
    - result % 10 == 0
    - If the result is divisible by 0 then it is a valid number
=end

require 'pry'

class Luhn
  def initialize(number_sequence)
    @number_sequence = number_sequence.to_s.split(//).map(&:to_i)
  end

  def addends
    numbers = []
    number_sequence.reverse.each_with_index do |number, index| 
      index.odd? ? numbers << (number * 2) : numbers << number
    end

    if numbers.any? { |number| number.digits.size > 1 }
      numbers.reverse.map { |number| number.digits.size > 1 ? (number - 9) : number }
    else
      numbers.reverse
    end
  end

  def valid?
    checksum % 10 == 0
  end

  def checksum
    addends.sum
  end

  def self.create(number)
    # Can add a check digit to make the number valid per the Luhn formula 
    # and return the original number plus that digit. 
    # This should give "2323 2005 7766 3554" in response to "2323 2005 7766 355".
    # the first digit doubled is the digit located immediately left of the check digit

    digits = number.to_s.split(//).map(&:to_i)
    doubled_digits = []
    
    digits.each_with_index do |digit, index| 
      index.odd? ? doubled_digits << (digit * 2) : doubled_digits << digit
    end

    if doubled_digits.any? { |number| number.digits.size > 1 }
      sum_digits = doubled_digits.map { |number| number.digits.size > 1 ? (number - 9) : number }
    else
      sum_digits = doubled_digits
    end

    digit = sum_digits.sum - digits[-3]

    binding.pry

    10 - digit

    # The check digit (x) is obtained by computing the sum of the non-check digits 
    # then computing 9 times that value modulo 10 (in equation form, ((67 × 9) mod 10)). 
    # In algorithm form
  end

  private

  attr_reader :number_sequence
end

p Luhn.create(123)
