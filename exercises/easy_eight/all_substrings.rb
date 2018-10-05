# Write a method that returns a list of all substrings of a string.
# The returned list should be ordered by where in the string the substring begins.

# Input: A string of characters.
# Output: An array containing substrings of the string passed as an argument.
# - All substrings that begin with index 0, then 1 and so on.
# - Substrings should be ordered from shortest to longest.

# - With each iteration, call the substrings_at_start method.

def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
