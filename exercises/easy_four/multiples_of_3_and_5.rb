require 'pry'

# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number,
# and then computes the sum of those multiples.
# For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

def multisum(number)
  multiples = []
  (1..number).each do |num|
    multiples << num if num % 3 == 0 || num % 5 == 0
  end
  multiples.inject(:+)
end

p multisum(3)
p multisum(5)
p multisum(10)
p multisum(1000)