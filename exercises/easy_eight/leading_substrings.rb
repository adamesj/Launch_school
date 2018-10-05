# Input: A string of characters
# Output: An array containing a list of substrings created from the string divided by the number of characters

# Example: 'xyz' => 'x', 'xy', 'xyz'

def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

substrings_at_start('xyzzy')