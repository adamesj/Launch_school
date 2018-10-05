# Write a method that takes a string, and returns a new string in which every consonant character is doubled.
# Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

# Input: A string of characters.
# Output: A string in which each character is printed twice if it is a consonant.
# Check if each character in the string is a constant and double it if it is.

def double_consonants(string)
  consonants = %w(b c d f g h j k l m n p q r s t v w x y z)
  doubled_string = ''
  string.each_char do |char|
    if consonants.include?(char.downcase)
      2.times { doubled_string << char }
    else
      doubled_string << char
    end
  end
  doubled_string
end

p double_consonants('String')
p double_consonants("Hello-World!")
p double_consonants(" ")