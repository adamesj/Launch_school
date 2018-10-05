# Write a program that prompts the user for two positive integers,
# and then prints the results of the following operations on
# those two numbers: addition, subtraction, product, quotient, remainder, and power.

# Input: Two positive integers.
# Output: The following operations with their respective results:
# addition
# subtraction
# product
# quotient
# remainder
# power

puts "Enter the first number:"
first = gets.to_i
puts "Enter the second number:"
second = gets.to_i

puts "#{first} + #{second} = #{first + second}"
puts "#{first} - #{second} = #{first - second}"
puts "#{first} * #{second} = #{first * second}"
puts "#{first} / #{second} = #{first / second}"
puts "#{first} % #{second} = #{first % second}"
puts "#{first} ** #{second} = #{first ** second}"
