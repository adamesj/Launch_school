# Write a method that takes an optional block
# If the block the block is specified the method should execute it,
# and return the value returned by the block, otherwise, the method should simply return the string "Does not compute."


def compute(input)
  block_given? ? yield(input) : 'Does not compute.'
end

p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'
