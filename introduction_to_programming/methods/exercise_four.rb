# What will the following code print to the screen?

def scream(words)
  words = words + "!!!!" # Set the variable words to 'Yippeeee!!!!'
  return # Stops execution
  puts words
end

scream("Yippeee")

# This program does not return a value because on line 5 we are explicity calling return
# which will stop the execution of the method.