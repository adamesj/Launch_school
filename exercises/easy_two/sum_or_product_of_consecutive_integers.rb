# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Input: An integer greater than 0 (positive).
# Output:
# - If user chooses sum, output the sum of all numbers between 1 and the integer.
# - If user chooses product, output the product of all numbers between 1 and the integer.

puts "Please enter an integer greater than 0"
integer = gets.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp.downcase

numbers = []
1.upto(integer) { |num| numbers << num }

if choice == 's'
  result = numbers.inject(:+)
  puts "The sum of the integers between 1 and #{integer} is #{result}."
elsif choice == 'p'
  result = numbers.inject(:*)
  puts "The product of the integers between 1 and #{integer} is #{result}."
else
  puts "Sorry, that is not a valid choice. Goodbye!"
end
