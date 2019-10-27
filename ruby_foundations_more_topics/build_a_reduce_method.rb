require 'pry'
=begin
  Build a reduce method that exhibits the same behavior of Enumberable#reduce.

  The reduce method yields two arguments to the block.
  The first argument is the accumulator object and the second is the current element.

  [1, 2, 3].reduce do |acc, num|
    acc + num
  end

  0 + 1 (accumulator starts at 0)
  1 + 2 (accumulator equals 1)
  3 + 3 (accumulator equals 3)
  => 6

  The method returns an integer representing the total value of the array.

  In the Enumerable#reduce method, the default initial value is the first element of the collection.
=end

def reduce(array, acc=array[0])
  # if its an array of numbers   acc = 0
  # if its an array of strings   acc = ''
  # if its an array of arrays    acc = []

  counter = acc == array[0] ? 1 : 0
  combined_values = yield(acc, array[counter])

  while counter < (array.size - 1)
    counter += 1
    # what we pass in is the current sum/result
    # a + b
    # => ab
    #ab + c
    # => abc
    combined_values += array[counter] #ab
  end

  combined_values
end

num = reduce([1, 2, 3], 10) do |acc, num|
  acc + num
end

puts num

# reduce([1, 2, 3]) { |acc, num| acc + num if num.odd? }

puts reduce(['a', 'b', 'c']) { |acc, value| acc += value }
# => abc
