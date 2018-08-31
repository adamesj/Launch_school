# Write a program that takes a number from the user between 0 and 100
# and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

def calculate_range(num)
  if num < 0
    puts 'Yikes! That\'s lower than 0!'
  elsif (num > 0) && (num <= 50)
    puts 'You\'re number is between 0 and 50!'
  elsif (num > 50) && (num <= 100)
    puts 'You\'re number is between 51 and 100!'
  else
    puts 'That\'s over 100!'
  end
end


calculate_range(51)