require 'pry'
# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes in the number of minutes and returns the time
# in 24 hour format (hh:mm).

# Ex: time_of_day(0) => "00:00"

# There are 1440 minutes in one day

# When Hours end up less than zero: add 24
# When hours end up more than 23: subtract 24

# When the minutes entered is negative, subtract from 60?

# If positive digit, add to minutes, if it exceeds 60, add one to the hour
# If a negative digit, subtract from 60, subtract one from the hour

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(minutes)
  time = []
  delta_minutes = minutes % MINUTES_PER_DAY

  hour = delta_minutes / 60
  minute = delta_minutes % 60
  sprintf("%02d:%02d", hour, minute)
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)
