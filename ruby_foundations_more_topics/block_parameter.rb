# method implementation
def increment(number)
  if block_given?
    yield(number + 1) # passing 5 + 1 to the block
  end
  number + 1
end

# method invocation
increment(5) do |num| # 6 is the block parameter
  puts num # ouputs 6
end

=begin
  Execution starts at method invocation on line 10.
  Execution moves to the method implementation on line 2, which sets 5 to the local variable number, and the block is not set to any variable; it's just implicitly available.
  Execution continues on line 3, which is a conditional.
  Our method invocation has indeed passed in a block, so the conditional is true, moving execution to line 4.
  On line 4, execution is yielded to the block (or the block is called), and we're passing number + 1 to the block. This means we're calling the block with 6 as the block argument.
  Execution jumps to line 10, where the block local variable num is assigned 6.
  Execution continues to line 11, where we output the block local variable num.
  Execution continues to line 12, where the end of the block is reached.
  Execution now jumps back to the method implementation, where we just finished executing line 4.
  Execution continues to line #5, the end of the if.
  Line 6 returns the value of the incremented argument to line 10.
  The program ends (the return value of #increment is not used)
=end
