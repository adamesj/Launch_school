# Create a digital root function.
# A digital root is the recursive sum of all the digits in a number.
# Given n, take the sum of the digits of n.
# If that value has two digits,
# continue reducing in this way until a single-digit number is produced.
# This is only applicable to the natural numbers.
# Here's how it works:

# digital_root(16)
# => 1 + 6
# => 7

# digital_root(942)
# => 9 + 4 + 2
# => 15 ...
# => 1 + 5
# => 6

=begin
  input: A positive integer
  output: The sum of all digits in the integer
  rules:
    - Only applicable to the natural numbers
    - 1 and above
    - Has to go down to a single digit
  algorithm:
    - Initialize a variable called digits and map the integer to an array of digits
    - Return the sum of all digits in the array via the reduce method
    - 9 4 2 -> 15 -> 1 5 -> 6
=end

# def digital_root(number)
#   running_total = number
#   loop do
#     digits = running_total.digits
#     break if digits.size == 1
#     running_total = digits.reduce(:+)
#   end
#   running_total
# end


def digital_root(number)
  loop do
    digits = number.digits
    return digits.first if digits.size == 1
    number = digits.sum
  end
end

p digital_root(942)




















