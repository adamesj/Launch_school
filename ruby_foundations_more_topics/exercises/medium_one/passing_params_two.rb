=begin
  raven, finch, *raptors = %w(raven finch hawk eagle)
  p raven # => 'raven'
  p finch # => 'finch'
  p raptors  # => ['hawk','eagle']

  Based on the example shown above, write a method that takes an array as an argument. 
  The method should yield the contents of the array to a block, which should assign 
  your block variables in such a way that it ignores the first two elements,
  and groups all remaining elements as a raptors array.
=end

birds = %w(raven finch hawk eagle)

def grouping(array)
  yield(array)
end

grouping(birds) do |_, _, *raptors|
  puts "Raptors: #{raptors.join(', ')}."
end

# Ruby treats block variables in much the same way that it does during assignment from an array. 
# In fact, you can use the splat operator to collect items into an Array.

=begin
  It assigns the first two birds, "crow" and "finch," to _; the underscore 
  tells Ruby that we aren't interested in those values. 
  The splat operator on the name block variable tells Ruby to treat 
  it as an Array and assign all remaining arguments to it.
=end