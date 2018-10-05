# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters.
# Spaces do not count as a characters.

# Input: User input of a string
# - The string may contain one of more words.
# Output: The number of characters in the string.
# - Spaces do not count.

# Example output: There are 4 characters in "walk".

puts "Please write a word or multiple words:"
words = gets.chomp
number_of_characters = words.split.join.length
puts "There are #{number_of_characters} characters in \"#{words}\"." # syntax for escaping double quotes within double quotes. ***
