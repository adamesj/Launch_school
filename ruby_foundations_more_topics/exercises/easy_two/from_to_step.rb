=begin
  Write a method that does the same thing as Range#step, but does not operate on a range. 
  Instead, your method should take 3 arguments: the starting value, the ending value, and the step value 
  to be applied to each iteration. 

  Your method should also take a block to which it will yield (or call) successive iteration values.
=end

def step(start_value, end_value, step_value)
  # increment then yield to the block
  until start_value > end_value
    yield(start_value)
    break if start_value + step_value > end_value
    start_value += step_value
  end
  start_value
end

p step(1, 10, 3) { |value| puts "value = #{value}" }
