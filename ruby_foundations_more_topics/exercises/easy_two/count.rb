=begin
  Write a method called count that behaves similarly for an arbitrarily long list of arguments. 
  It should take 0 or more arguments and a block, 
  and then return the total number of arguments for which the block returns true.

  If the argument list is empty, count should return 0
=end

def count(*args)
  values = []
  args.each { |el| values << el if yield(el) }
  values.size
end

p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3