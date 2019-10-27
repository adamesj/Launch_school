=begin
  These are the decimal places

  Input: An integer
  Output: An array representing a string of elements made up of the binary version of the input
  
  handshake = SecretHandshake.new 9
  9 = 1001
  handshake.commands # => ["wink","jump"]
  
  1 - convert the input into binary
  
  To convert integer to binary, start with the integer in question 
  and divide it by 2 keeping notice of the quotient and the remainder. 
  Continue dividing the quotient by 2 until you get a quotient of zero.
  
  12 / 2  = 6 + 0
  6 / 2   = 3 + 0
  3 / 2   = 1 + 1
  1 / 2   = 0 + 1
  
  reverse all remainders
  
  12 = 1100
  
  We need to keep track of the quotient (divide) and the remainder (modulo)
  
  (last element)    1 = wink 
  (second to last)  10 = double blink
  (third to last)   100 = close your eyes
  (forth to last)   1000 = jump
  (first position)  10000 = Reverse the order of the operations in the secret handshake.

  10011
  ["double blink", "wink"]
=end

require 'pry'

class SecretHandshake
  attr_reader :decimal_number

  def initialize(decimal_number)
    if decimal_number.is_a?(String) && decimal_number == decimal_number.to_i.to_s
      @decimal_number = decimal_number.to_i
    elsif decimal_number.is_a?(Integer) && decimal_number == decimal_number.to_s.to_i
      @decimal_number = decimal_number.to_i
    else
      @decimal_number = 0
    end
  end

  def convert_to_binary
    return [] unless decimal_number > 0
    quotient = decimal_number
    binary = []
    while quotient > 0
      binary << (quotient % 2)
      quotient = quotient / 2
    end
    binary.reverse
  end

  def commands
    binary_number = self.convert_to_binary
    steps = []
    
    binary_number.each_with_index do |number, index|
      next if number == 0
      if (binary_number[index..-1].join.to_i / 1 == 1)
        steps << "wink"
      elsif (binary_number[index..-1].join.to_i / 10 == 1)
        steps << "double blink"
      elsif (binary_number[index..-1].join.to_i / 100 == 1)
        steps << "close your eyes"
      elsif (binary_number[index..-1].join.to_i / 1000 == 1)
        steps << "jump"
      end
    end
    
    if binary_number.size > 4
      steps.reverse.reverse
    else
      steps.reverse
    end
  end
end

handshake = SecretHandshake.new(19)
p handshake.commands