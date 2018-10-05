# Build a program that displays when the user will retire and how many years he/she has to work till retirement.

# Input:
# - A positive integer representing a person's age.
# - A positive integer representing the year the person wants to retire.

# Output:
# - The year the person will retire (add the difference between current age and age of retirement to the current year).
# - How many years the person has left to retire (difference between current age and age of retirement).

puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i

years_until_retirement = retirement_age - age

puts "It's 2018. You will retire in #{years_until_retirement + 2018}."
puts "You have only #{years_until_retirement} years of work to go!"
