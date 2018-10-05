# Input: A string of characters
# Output: A hash containing three keys with their corresponding values: lowercase, uppercase, neither
# Spaces count as neither

# Can make use of ranges to see if the character is included in the range

def letter_case_count(string)
  words = string.chars
  count = {lowercase: 0, uppercase: 0, neither: 0}
  uppercase = ('A'..'Z').to_a
  lowercase = ('a'..'z').to_a
  words.each do |word|
    if uppercase.include?(word)
      count[:uppercase] += 1
    elsif lowercase.include?(word)
      count[:lowercase] += 1
    else
      count[:neither] += 1
    end
  end
  p count
end

letter_case_count('abCdef 123')
letter_case_count('AbCd +Ef')
