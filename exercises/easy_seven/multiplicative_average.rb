# Input: An array of integers
# Output: Multiply all integers, divide the result by the number of elements and round the result to 3 decimal places.

def show_multiplicative_average(array)
  product = array.inject(:*)
  quotient = product.to_f / array.length.to_f
  result = sprintf("%.3f", quotient.round(3))
  "The result is #{result}"
end

p show_multiplicative_average([3, 5])