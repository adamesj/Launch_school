# Input: noun, verb, adjective, and adverb (user input)
# Output: A custom story using the input from the user

def prompt(string)
  puts string
end

prompt("Enter a noun:")
noun = gets.chomp
prompt("Enter a verb:")
verb = gets.chomp
prompt("Enter a adjective:")
adjective = gets.chomp
prompt("Enter a adverb:")
adverb = gets.chomp

sentece_1 = "I saw a #{adjective} #{noun} #{adverb} #{verb} up and down the street. Isn't that something?"
sentence_2 = "I went to get a #{adjective} scoop of ice cream. Afterwards I had to #{verb} #{adverb} to catch our #{noun}."
sentence_3 = "I almost didn't make it to #{noun}. I had to #{adverb} #{verb} in order to catch the #{adjective} book."

puts ""
puts [sentece_1, sentence_2, sentence_3].sample