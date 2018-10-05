# Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

# Input: 6 integers
# - The last integer will be used to determine if it matches one of the previous 5

# Output: An array of integers created by the user input
# - true if last integer is included, false otherwise

def prompt(string)
  puts string
end

numbers = []

prompt "Enter the 1st number:"
numbers << gets.to_i
prompt "Enter the 2nd number:"
numbers << gets.to_i
prompt "Enter the 3rd number:"
numbers << gets.to_i
prompt "Enter the 4th number:"
numbers << gets.to_i
prompt "Enter the 5th number:"
numbers << gets.to_i

prompt "Enter the last number:"
last_number = gets.to_i

if numbers.include?(last_number)
  prompt "The number #{last_number} appears in #{numbers}."
else
  prompt "The number #{last_number} does not appear in #{numbers}."
end
