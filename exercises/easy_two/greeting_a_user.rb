# Write a program that will ask for the user's name.
# The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

# Input: User's name or name with an exclamation mark
# Output:
# - If user inputs name, "Hello name"
# - Otherwise, if the user inputs their name with an exclamation mark, output the upcase version of the greeting

puts "What is your name?"
name = gets.chomp

if name.end_with?("!")
  puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?" # chop removes the last character in the string.
else
  puts "Hello #{name}."
end
