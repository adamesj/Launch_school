# Write two methods that each take a time of day in 24 hour format,
# and return the number of minutes before and after midnight, respectively.
# Both methods should return a value in the range 0..1439

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  time_array = time.split(/(:)/).delete_if {|num| num == ":"}
  total_minutes = time_array[0].to_i * 60 + time_array[1].to_i
  total_minutes == MINUTES_PER_DAY ? 0 : total_minutes
end

def before_midnight(time)
  time_array = time.split(/(:)/).delete_if {|num| num == ":"}
  total_minutes = time_array[0].to_i * 60 - time_array[1].to_i
  total_minutes == MINUTES_PER_DAY ? 0 : total_minutes
end

p after_midnight("12:34")
p after_midnight('00:00')
p after_midnight('24:00')
p before_midnight("12:34")
p before_midnight('24:00')
p before_midnight('00:00')