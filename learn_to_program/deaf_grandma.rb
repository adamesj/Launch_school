# Input: User text (can be anything)
# Output: NO, NOT SINCE 1938 (condition is met)
# Output: HUH?! SPEAK UP, SONNY! (condition is not met)

# 1) User input must be in all caps
# 2) If user input is in all caps, program should respond with:
# 3) NO, NOT SINCE 1938
# 4) Otherwise, it will respond with:
# 5) HUH?! SPEAK UP, SONNY!
# 6) The program will not stop until the user inputs BYE (all caps)
# Bonus: Have grandma respond with a random year each time

response_count = 0
puts 'WHAT WAS THAT DEAR?!'

while response_count < 3
  year = rand(1930..1950)

  response = gets.chomp

  if response == response.upcase && response != 'BYE'
    puts 'NO, NOT SINCE ' + year.to_s
    response_count = 0
  elsif response_count > 0 && response != 'BYE'
    response_count = 0
    puts 'HUH?! SPEAK UP, SONNY!'
  elsif response == 'BYE'
    response_count += 1
  end
end

