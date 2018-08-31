# Look at the following programs...

x = 0
3.times do
  x += 1
end
puts x

# This should output 3 because we are adding 1 to 0 three times

# and...

y = 0
3.times do
  y += 1
  x = y
end
puts x

# This will output an error because x is initialize in the do/end block
# and is not available outside the scope of the block.

# What does x print to the screen in each case?
# Do they both give errors? Are the errors different? Why?