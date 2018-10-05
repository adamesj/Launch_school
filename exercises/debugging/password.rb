# The following code prompts the user to set their own password if they haven't done so already,
# and then prompts them to login with that password.

password = nil

def set_password(password)
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

new_password = set_password(password) unless password

verify_password(new_password)
