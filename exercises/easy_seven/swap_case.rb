# Input: String as an argument
# Output: A new string with the uppercase letter swapped with its lowercase version and vice versa.

UPPERCASE_LETTERS = ('A'..'Z').to_a
LOWERCASE_LETTERS = ('a'..'z').to_a

def swapcase(string)
  words = string.chars
  words.each do |word|
    if UPPERCASE_LETTERS.include?(word)
      word.downcase!
    elsif LOWERCASE_LETTERS.include?(word)
      word.upcase!
    else
      word
    end
  end
  puts words.join
end

swapcase('CamelCase')
swapcase('Tonight on XYZ-TV')