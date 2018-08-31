# Use the modulo operator, division, or a combination of both to take a 4 digit number 
# and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place

number = 2345

# Thousands place
puts number / 1000

# Hundreds place
puts number / 100 % 10

# Tens place
puts number / 10 % 100 % 10

# Ones place
puts number % 10