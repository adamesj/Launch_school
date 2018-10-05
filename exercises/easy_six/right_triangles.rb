require 'pry'
# Input: An integer
# Output: A right triangle whose sides have the number of stars passed in as an argument


def triangle(number)
  numbers = (1..number)
  space = []
  numbers.last.times { space << " " }

  numbers.each do |number|
    puts space.join + ('*' * number)
    space.pop
  end
end

triangle(9)