require 'pry'

# Write a method that takes a string as argument,
# and returns true if all parentheses in the string are properly balanced, false otherwise.
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false


=begin
  input: A string or characters
  output:
    - true if all parentheses are balanced (even)
    - false otherwise
  rules:
    - If the string does not have a parenthesis, then return true
    - Balanced pairs must each start with a (, not a )
    - Count has to start with an opening parenthesis
  algorithm:
    - Split the string into an array of characters
    - Iterate through the array counting the number of opening and closing parentheses
    - If a character in the string equals a parenthesis raise the count
    - compare the count and check if they are equal
    - if equal return true otherwise, return false
=end

def balanced?(string)
  opening_parenthesis = '('
  closing_parenthesis = ')'
  characters = string.chars
  parentheses = []
  characters.each do |character|
    if (character == opening_parenthesis) || (character == closing_parenthesis)
      parentheses << character
    end
  end

  return true if parentheses.empty?
  return false if parentheses.last == opening_parenthesis

  if parentheses[0] == opening_parenthesis
    parentheses.count(opening_parenthesis) == parentheses.count(closing_parenthesis) ? true : false
  else
    false
  end
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
