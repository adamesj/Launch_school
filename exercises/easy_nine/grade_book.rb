# Write a method that determines the mean (average) of the three scores passed to it,
# and returns the letter value associated with that grade.

# Three positive integers are given as arguments
# If the three integers fall within a certain average we return a letter grade
# Example: (95, 90, 93) == "A"

# This feels like a good use for a case statement

def get_grade(value_1, value_2, value_3)
  # calculate the average
  average = (value_1 + value_2 + value_3) / 3
  # construct a case statement
  case
  when (90..100).cover?(average) then 'A' # don't have to use .cover, you can just check the range 90..100
  when (80..90).cover?(average) then 'B'  # if the case is checking the variable
  when (70..80).cover?(average) then 'C'
  when (60..70).cover?(average) then 'D'
  else
    'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"