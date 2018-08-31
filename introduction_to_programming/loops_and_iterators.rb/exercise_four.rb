# Write a method that counts down to zero using recursion.

def divider(num)
  puts num

  if num > 0
    divider(num - 1) # output the number if it's greater than 0
  end
end

puts divider(10)