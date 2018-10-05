# Write a method that displays a 4-pointed diamond in an n x n grid where n is an odd integer
# that is supplied as an argument to the method.

# The input represents the amount of * symbols that will line up vertically and horizontally in the middle of the diamond.
# Each output is centered.

# Example:

# diamond(3)
#  *
# ***
#  *

# Note how there are 3 * symbols going up and across the middle of the output.

# Example 2:

# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

# 9x9

# Note how the * symbols are increasing from 1 to the number 9 then decrease back to 1.
# Also the number passed in represents the number of lines printed out.
# No spaces between the symbols
# starting from 1 there are 8 spaces, for 3 there are 6 spaces, for 5 there are 4 spaces, etc.

# Input: An odd integer

def diamond(number)
  # Iterate from 1 to number, upto?
  1.upto(number) do |i|
    puts ('*' * i).center(number) if i.odd?
  end

  # Iterate from number to 1, downto?
  (number - 1).downto(1) do |i|
    puts ('*' * i).center(number) if i.odd?
  end
end

diamond(9)
