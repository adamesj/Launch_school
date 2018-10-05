# Write a method that takes a non-empty string argument, and returns the middle characters of the argument.

# Input: A string of characters.
# - The input will never be an empty string.

# Output: Returns the middle characters of the string.
# - If the string's length is odd, return one character, two if the length is even, and one character if the string is only one character.

# Example: 'I love ruby' => 'e', 'x' => 'x'

def center_of(string)
  if string.length.even?
    start_number = (string.length / 2) - 1
    string[start_number..start_number.next]
  elsif string.length.odd?
    start_number = (string.length / 2)
    string[start_number]
  else
    string
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
