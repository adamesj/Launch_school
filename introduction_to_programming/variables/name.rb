# Part 1

puts 'Hi there! What\'s your name?'
name = gets.chomp

puts "It's nice to meet you #{name}!"

# Part 2

10.times do |n|
  puts "#{name} is so great!"
end

# Part 2

puts 'Hi there, What\'s your first name?'
first_name = gets.chomp

puts 'Awesome! What about your last name?'
last_name = gets.chomp

puts first_name + ' ' + last_name + '. What a mighty fine name!'