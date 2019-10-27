=begin
  Let's write our own Fixnum#times method.

  5.times do |num|
    puts num
  end

  0
  1
  2
  3
  4
  => 5

  The method's first block argument is 0 and the last block argument is 1 less than the calling object.
  The method returns the calling object, 5.
=end

# method implementation
def times(number)
  counter = 0
  while counter < number do
    yield(counter)
    counter += 1
  end

  number # return the original method argument to match behavior of the Fixnum#times method.
end

# method invocation
times(5) do |num| # counter on line 21 is passed to this block
  puts num # which is then outputted
end
