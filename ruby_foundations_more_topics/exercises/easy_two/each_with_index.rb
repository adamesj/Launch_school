=begin
  Write a method called each_with_index that behaves similarly for Arrays. 
  It should take an Array as an argument, and a block. 
  It should yield each element and an index number to the block. 
  each_with_index should return a reference to the original Array.
=end

def each_with_index(array)
  counter = 0
  while counter < array.length
    yield(array[counter], counter)
    counter += 1
  end
  array
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]
