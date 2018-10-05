# Input: A string of characters
# Ouput: The characters of the string in reverse order
# - Can't use reverse method
# "ice" => "eci"

def reverse_string(string)
  array = []
  letters = string.split("")
  letters.length.downto(0) do |num|
    array << letters[num]
  end
  array.join
end

p reverse_string("word")
