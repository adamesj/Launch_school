loop do
  puts "Do you want to do that again?" # prompt user input
  answer = gets.chomp                  # set user input to a variable
  if answer != 'Y'                     # check if user inputted something other than 'Y' string
    break                              # if true, stop the loop, otherwise continue
  end
end


# In a simple loop, the condition to break the loop occurs at the end.
# This ensures that the loop occurs at least once.