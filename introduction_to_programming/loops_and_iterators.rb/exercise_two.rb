# Write a while loop that takes input from the user, performs an action,
# and only stops when the user types "STOP". Each loop can get info from the user.

# Input: user inputted string
# Output: prompt user to input again unless they type "STOP"



loop do
  puts "Hey, do you like flowers?"
  response = gets.chomp

  if response == 'STOP'
    break
  elsif response == 'yes'
    puts "Aw, well isn't that lovely!"
  else
    puts "Darn, that's too bad..."
  end

  puts ''
  puts ''
end