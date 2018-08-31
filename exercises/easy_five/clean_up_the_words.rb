 # Write a method that returns that string with all of the non-alphabetic characters replaced by spaces.
 # If one or more non-alphabetic characters occur in a row, you should only have one space


 # How to detect non-alpha characters

def cleanup(string)
  string.gsub(/[^0-9a-z]/i, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?")