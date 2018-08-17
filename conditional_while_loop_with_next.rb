x = 0

while x <= 10
  if x == 3
    x += 1
    next        # move on to the next iteration
  elsif x.odd?
    puts x
  end
  x += 1        # next iteration starts here
end

# 1
# 5
# 7
# 9