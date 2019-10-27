require 'byebug'

=begin
  Write a method called drop_while that behaves similarly for Arrays. 
  It should take an Array as an argument, and a block. 
  It should return all the elements of the Array, 
  except those elements at the beginning of the Array that produce 
  a truthy value when passed to the block.

  If the Array is empty, or if the block returns a truthy value for every element, 
  drop_while should return an empty Array.
=end

def drop_while(array)
  # return an empty array if all values are truthy when passed to the block
  # new_values = []
  # arr.each_with_index do |value, index|
  #   if yield(value)
  #     new_values << value
  #   else
  #     return arr[index..arr.last]
  #   end
  # end
  # return [] if new_values.size == arr.size
  index = 0
  while index < array.size && yield(array[index])
    index += 1
  end

  array[index..-1]
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []
