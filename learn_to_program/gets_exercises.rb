# Full name greeting

puts 'Oh hi stranger, mind telling me your first name?'
first_name = gets.chomp

puts 'Lovely, what about your middle name?'
middle_name = gets.chomp

puts 'Fantastic! Finally, could you tell me your last name?'
last_name = gets.chomp

puts 'Ah, so it\'s ' + first_name + ' ' + middle_name + ' ' + last_name + '! Has a nice ring to it. :)'


# Bigger, better favorite number

puts 'Hey buddy! What\'s your favorite number?'
favorite_number = gets.chomp.to_i

puts 'Bah! ' + (favorite_number + 1).to_s + ' Is a much better number! :P'