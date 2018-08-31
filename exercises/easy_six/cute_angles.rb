require 'pry'

# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees
# and returns a String that represents that angle in degrees, minutes and seconds


DEGREE = "\xC2\xB0" # degree symbol

# 1 degree  = 60 minutes
# 1 minutes = 60 seconds
# 1 degree  = 3600 seconds

# 1) The number before the decimal will be the degrees
# 2) Take the number after the decimal and multiply by 60
# 3) Take the number after the decimal and multiply by 60 (may need to round)

# Example:

# 105.38

# 105 degrees

# .38 * 60 = 22.8

# 22 minutes

# .8 * 60 = 48.

# 105 22' 48"

def dms(number)
  if number < 0
    degrees_decimal = (number.divmod(-1))
    minutes_decimal = (degrees_decimal[1] * 60).divmod(-1)
    seconds = (minutes_decimal[1] * -60).round
    degrees = -(degrees_decimal[0])
  else
    degrees_decimal = number.divmod(1)
    minutes_decimal = (degrees_decimal[1] * 60).divmod(1)
    seconds = (minutes_decimal[1] * 60).round
    degrees = degrees_decimal[0]
  end

  minutes = minutes_decimal[0]

  puts sprintf(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

dms(30)
dms(76.73)
dms(254.6)
dms(93.034773)
dms(0)
dms(360)
dms(-76.73)