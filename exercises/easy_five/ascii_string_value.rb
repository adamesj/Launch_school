# Write a method that determines the ASCII value of each character in a string
# then sums the values of the string and returns the result.


def ascii_value(string)
  # determine the value of each character
  values = []
  string.each_char { |c| values << c.ord }
  # sum the values
  values.sum
end

p ascii_value('Four score')
p ascii_value('Launch School')
p ascii_value('a')
p ascii_value('')