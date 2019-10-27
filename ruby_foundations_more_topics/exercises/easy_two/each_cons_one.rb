=begin
  Write a method called each_cons that takes an array as an argument and a block.
  It should yield each consecutive pair of elements to the block, and return nil.

  Reference for how consecutive pairs work for the Array [1, 3, 6, 10]:

  1, 3
  3, 6
  6, 10
=end

def each_cons(array)
  array.each_with_index do |value, index|
    yield(array[index], array[index + 1]) unless ( (index + 1) > (array.length - 1) )
  end
  nil
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil