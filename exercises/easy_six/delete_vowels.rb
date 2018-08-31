# Write a method that takes an array of strings,
# and returns an array of the same string values with the vowels extracted.

def remove_vowels(words)
  words.each { |word| word.gsub!(/([aeiouAEIOU])/, '') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ))