# Write a method that takes a string, and returns a new string in which every character is doubled.

# Input: A string of characters.
# Output: A string in which each character is printed twice.

# Example: "Hello" => "HHeelllloo"
# Notice how each character appears twice in order.

def repeater(string)
  doubled_string = ''
  string.each_char do |char|
    2.times { doubled_string << char }
  end
  doubled_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
