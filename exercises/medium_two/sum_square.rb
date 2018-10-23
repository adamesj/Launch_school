# Write a method that computes the difference between the square of the sum of the first n positive integers
# and the sum of the squares of the first n positive integers.

# Example: sum_square_difference(3) == 22
# (1 + 2 + 3) ** 2 - (1**2 + 2**2 + 3**2)


=begin
  input: A positive integer
  output: A positive integer (or zero) representing
  the difference between the sum of all numbers between 1 and the input squared and the sum of each square from 1 to the input
  rules: Assume that the input will always be a positive integer
  algorithm:
    - Create an array of integers using the range object from 1 to n and initialize the array to a variable (numbers)
    - initialize a variable representing the sum of the array to the second power (sum_sqaured)
    - map each element in the array to the second power and calculate the sum of all elements in the array (mapped_squares)
=end

def sum_square_difference(number)
  numbers = (1..number).to_a
  (numbers.reduce(:+) ** 2) - numbers.map {|num| num ** 2}.reduce(:+)
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150