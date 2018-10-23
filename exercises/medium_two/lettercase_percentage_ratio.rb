require 'pry'

# Write a method that takes a string, and the returns a hash that contains 3 entries:
# 1) The percentage of characters in the string that are lowercase letters.
# 2) The percentage of characters in the string that are uppercase letters.
# 3) The percentage of characters that are neither. (spaces and punctuation)


=begin
  input: A string of characters
  output: A hash containing three keys
    - lowercase
    - uppercase
    - neither
      - spaces, numbers, and punctuation
    - the value of each key will be an integer representing the percentage of occurences in the string
  rules:
    - There will always be at least one character.
  algorithm:
    - initialize an empty hash called 'percentages'
    - initialize a variable called 'characters' and set it to point to the string invoking the chars method
    - initialize a variable called total_percentage and set it equal to the total number of characters
    - iterate through array
      - count each number of uppercase, lowercase, and everything else
    - for each,
      - divide the count by the total_percentage (total count) then multiply by 100
      - both numbers have to be floats and rounded (I think by 1)
    - add to the hash
=end

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def letter_percentages(string)
  percentages = {lowercase: 0, uppercase: 0, neither: 0}
  characters = string.chars
  total_number_of_characters = string.size
  upper_count = 0
  lower_count = 0
  other_count = 0
  characters.each do |character|
    if UPPERCASE.include?(character)
      upper_count += 1
      percentages[:uppercase] = ((upper_count / total_number_of_characters.to_f) * 100)
    elsif LOWERCASE.include?(character)
      lower_count += 1
      percentages[:lowercase] = ((lower_count / total_number_of_characters.to_f) * 100)
    else
      other_count += 1
      percentages[:neither] = ((other_count / total_number_of_characters.to_f) * 100)
    end
  end
  percentages
end

p letter_percentages('abCdef 123')
p letter_percentages('123')
p letter_percentages('AbCd +Ef')































