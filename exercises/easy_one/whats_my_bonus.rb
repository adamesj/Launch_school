# Write a method that takes two arguments, a positive integer and a boolean, and
# calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary
# otherwise, the bonus should be 0.

# Input: A positive integer and a boolean value
# Output:
# - If the boolean value is true, output half of the salary
# - If the boolean value is false, output zero

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
