# Rewrite your program from exercise 3 using a case statement.
# Wrap this new case statement in a method and make sure it still works.

def calculate_range(num)
  num = case
  when num < 0
    puts 'Yikes! That\'s lower than 0!'
  when (num > 0) && (num <= 50)
    puts 'You\'re number is between 0 and 50!'
  when (num > 50) && (num <= 100)
    puts 'You\'re number is between 51 and 100!'
  else
    puts 'That\'s over 100!'
  end
end

calculate_range(75)