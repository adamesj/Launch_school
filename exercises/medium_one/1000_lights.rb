require 'pry'

# We are given a positive integer as an argument.
# From the integer create an array containing numbers from 1 to the integer.
# The integer represents the number of iterations.
# For each iteration, if the current element is a multiple of the current iterator
# and it exists in the array remove it, otherwise add it to the array

# first pass
# [1, 2, 3, 4, 5]
# second pass
# [1, 3, 5]
# third pass
# [1, 5]
# fourth pass
# [1, 4, 5]

def light_switch(number)
  digits = (1..number).to_a
  # Return all elements that are multiples of the current iteration
  # alternate between even then odd
  count = 2
  while count < number
    if digits.include?(count)
      current_digits = digits.select {|digit| digit % count == 0}
    else
      current_digits.push(count)
    end
    count += 1
  end
  current_digits
end

p light_switch(10)
