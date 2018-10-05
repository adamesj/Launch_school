# In this exercise, you will write a method named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy, false otherwise.

# Input: Two arguments that evaluate to true or false.
# Output:
# - True if one or the other argument is true.
# - False if both arguments are false.
# - Based on the example out, if both statements are true, it should return false.

def xor?(value_1, value_2)
   if value_1 && !value_2
    true
  elsif value_2 && !value_1
    true
  else
    false
  end
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)
