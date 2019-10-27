=begin
  Now, let's try to build our own .each method that works similar to the Array#each method.
  Remember that the Array#each method returns the calling object at the end.

  [1, 2, 3].each { |num| "do nothing" }
  => returns [1, 2, 3]
=end

def each(array)
  counter = 0
  while counter < array.size do
    yield(array[counter])
    counter += 1
  end
  array # returns the original array
end

each([1, 2, 3]) do |num|
  puts num
end

# Because the each method returns the argument, we can chain other methods to it like so:

odds = each([1, 2, 3]) { |num| "do nothing" }.select { |num| num.odd? }
p odds