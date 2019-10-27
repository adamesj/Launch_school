=begin
  Build a select method that mirrors the behavior of Array#select.

  1) Array#select takes a block, then yields each element to the block.
  2) If the block evaluates to true, the current element will be included in the returned array.
  3) If the block evaluates to false, the current element will not be included in the returned array.

  Example:

  arr = [1, 2, 3]

  arr.select { |num| num.odd? } => [1, 3]
  arr.select { |num| puts num } => [], because puts num returns nil and evaluates to false
  arr.select { |num| num + 1 } => [1, 2, 3], because num + 1 will evaluate to true
=end

def select(array)
  counter = 0
  new_array = []
  while counter < array.size
    new_array << array[counter] if yield(array[counter])
    counter += 1
  end

  new_array
end

arr = select([1, 2, 3, 4, 5]) do |num|
  num + 1
end

p arr