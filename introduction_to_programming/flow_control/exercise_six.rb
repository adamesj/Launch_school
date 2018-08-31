def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
# 'end' keyword belongs here
end

equal_to_four(5)

# This will output an error because the program is expecting a missing 'end'
# keyword after the else condition on line 5.
# If we add an end after line 5, the program should run.