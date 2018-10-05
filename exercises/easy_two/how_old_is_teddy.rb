# Build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between 20 and 200.

# Output:
# - A random number between 20 and 200.


age = rand(20..200) # Two dots means that 200 is included in the range.

puts "Teddy is #{age} years old!"
