# Write a program that asks for a starting year and an ending year
# then returns all the leap years in between

# 1) Leap years are divisible by 4. i.e. 1984, 2004
# 2) Leap years are not divisible by 100 unless they are also divisible by 400
# 3) A leap year has to be divisible by 100 and 400 in the case above

# Input: starting year, ending year
# Output: all years in between that are leap years

puts 'Please enter a starting year:'
starting_year = gets.chomp.to_i

puts 'Please enter an ending year:'
ending_year = gets.chomp.to_i

current_year = starting_year

while current_year < ending_year
  if current_year % 4 == 0
    puts current_year.to_s + ' is a leap year!'
  elsif (current_year % 100 == 0) && (current_year % 400 == 0)
    puts current_year.to_s + ' is a leap year!'
  end

  current_year += 1
end