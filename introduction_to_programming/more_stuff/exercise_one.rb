# Write a program that checks if the sequence of characters "lab" exists in the following strings.
# If it does exist, print out the word.

def check_for_match(string)
  if string =~ /lab/
    puts string
  else
    puts "This is not a match!"
  end
end

check_for_match("laboratory")
check_for_match("experiment")
check_for_match("Pans Labyrinth")
check_for_match("elaborate")
check_for_match("polar bear")