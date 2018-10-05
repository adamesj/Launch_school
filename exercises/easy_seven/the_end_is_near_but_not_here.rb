# Input: A string of characters.
# Output: The second to last character in the string.


def penultimate(string)
  split_string = string.split
  split_string[-2]
end

p penultimate('last word')
p penultimate('Launch School is great!')