def fibonacci(number)
  if number < 2                                     # check if the number passed in is less than 2
    number                                          # if true, return the number
  else
    fibonacci(number - 1) + fibonacci(number - 2)   # if false, add the result of this method
  end                                               # passing in the result of adding the number passed in minus 1
end                                                 # and the number plus 2

puts fibonacci(6)

# This goes down the chain of numbers until it returns 1
# The 1's get added together to result in 8. (see diagram at launch school)