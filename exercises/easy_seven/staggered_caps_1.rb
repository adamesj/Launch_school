# Input: a string of characters
# Output: A staggered scheme of capitalization. cap, not cap, cap, ...etc (per letter/space).

UPPERCASE_LETTERS = ('A'..'Z').to_a
LOWERCASE_LETTERS = ('a'..'z').to_a

def staggered_case(string)
  split_string = string.chars
  if UPPERCASE_LETTERS.include?(split_string[0])
    split_string.each_with_index do |string, index|
      string.upcase! if index.even?
    end
  elsif LOWERCASE_LETTERS.include?(split_string[0])
    split_string.each_with_index do |string, index|
      if index.odd?
        string.downcase!
      else
        string.upcase!
      end
    end
  end
  split_string.join
end

p staggered_case('I Love Launch School!')
p staggered_case('ignore 77 the 444 numbers')
