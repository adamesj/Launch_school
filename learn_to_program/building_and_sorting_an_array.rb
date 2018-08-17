# Input: As many words as the user wants. One word per line.
# Output: Sorted array with words entered by the user.


words = []
puts 'Hey, how\'s about giving me a couple of words?'

while true
  input = gets.chomp

  if input == ''
    break
  end

  words.push(input)
end

puts 'Here are your words:'
puts words.sort.to_s
