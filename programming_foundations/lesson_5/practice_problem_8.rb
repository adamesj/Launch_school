# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
vowels = 'aeiou'

hsh.each do |place, words|
  words.each do |word|
    letters = word.chars # array of letters for each element in array
    letters.each do |letter|
      puts letter if vowels.include?(letter)
    end
  end
end
