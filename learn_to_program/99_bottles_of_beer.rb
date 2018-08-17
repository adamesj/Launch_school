require 'pry'

# Has to countdown from 99 to 0
# When it reaches 1, bottle is singular not plural

# What condition do we have to check in order to maintain the loop?
# - Check if a number is greater than 0

bottle_count = 99

while bottle_count > 0
  # Recite first part of rhyme
  puts "#{bottle_count} bottles of beer on the wall. #{bottle_count} bottles of beer."
  puts "You take one down and pass it around."
  puts "#{bottle_count - 1} bottles of beer on the wall."

  # Subtract from total
  bottle_count -= 1

  if bottle_count == 1
    puts "#{bottle_count} bottle of beer on the wall. #{bottle_count} bottle of beer."
    puts "You take one down and pass it around."
    puts "No more bottles of beer on the wall."
  elsif bottle_count == 0
    puts "No more bottles of beer on the wall. No more bottles of beer."
    puts "You take one down and pass it around."
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end