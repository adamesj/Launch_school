require 'pry'

=begin
  A fixed-length array is an array that always has a fixed number of elements.
  Write a class that implements a fixed-length array, and provides the necessary methods to support the following code:

  Expected output: true should be outputted 16 times.

  rules:
    - A fixed-length array does not change in length.
    - The FixedArray class takes in an integer as an argument when an object is instantiated.
    - This number represents the length of the array?
    - Looks like the array is initialized with nil elements.
    - There is a setter method for the FixedArray class.
=end

class FixedArray
  attr_reader :array

  def initialize(length)
    @array = [nil] * length
  end

  def [](index) #element reference
    array.fetch(index) #not for negative numbers
  end

  def []=(index, element) #reassign an element in the array
    self[index] #raise error if index is invalid!
    array[index] = element
  end

  def to_a
    array
  end

  def to_s
    "#{array}"
  end
end

fixed_array = FixedArray.new(5) #[nil, nil, nil, nil, nil]
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5 #[nil, nil, nil, nil, nil]

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[7] = 3
  puts false
rescue IndexError
  puts true
end
