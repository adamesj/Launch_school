# What will each block of code below print to the screen?
# Write your answer on a piece of paper or in a text editor
# and then run each block of code to see if you were correct.

'4' == 4 ? puts("TRUE") : puts("FALSE")
# This will output FALSE because '4' == 4 will evaluate to false

x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end
# This will output 'Did you get it right' because the if expression will evaluate to true

y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end
# This iwll output 'Alright now' because this expression will evaluate to true and the
# program will stop running.