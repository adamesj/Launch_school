require 'pry'

# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character.

# Similar to how uniq is used on an array:

def crunch(string)
  counter = 0
  letters = string.chars
  while counter < letters.length
    if letters[counter] == letters[counter + 1]
      letters[counter].delete!(letters[counter + 1])
    end
    counter += 1
  end
  letters.reject {|l| l.empty?}
  letters.join
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('ggggggggggggggg')
p crunch('4444abcabccba')
p crunch('a')
p crunch('')