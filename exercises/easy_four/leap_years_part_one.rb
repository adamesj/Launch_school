# leap years occur in every year that is evenly divisible by 4,

# unless the year is also divisible by 100.
# If the year is evenly divisible by 100,
# then it is not a leap year unless the year is evenly divisible by 400

def leap_year?(year)
  if (year % 4 == 0) && (year % 100 != 0)
    true
  elsif year % 400 == 0
    true
  else
    false
  end
end

p leap_year?(2016)
p leap_year?(2015)
p leap_year?(2100)
p leap_year?(2400)
p leap_year?(240000)
p leap_year?(240001)
p leap_year?(2000)
p leap_year?(1900)
p leap_year?(1752)
p leap_year?(1700)
p leap_year?(1)
p leap_year?(100)
p leap_year?(400)
