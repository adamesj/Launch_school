# Write a method that takes a String of digits, and returns the appropriate number as an integer.
# The String may have a leading + or - sign; if the first character is a +,
# your method should return a positive number; if it is a -,
# your method should return a negative number.
# If no sign is given, you should return a positive number.

def string_to_signed_integer(string)
  numbers = []

  string.each_char do |str|
    case str
    when '1' then numbers << 1
    when '2' then numbers << 2
    when '3' then numbers << 3
    when '4' then numbers << 4
    when '5' then numbers << 5
    when '6' then numbers << 6
    when '7' then numbers << 7
    when '8' then numbers << 8
    when '9' then numbers << 9
    else
      0
    end
  end

  value = 0
  numbers.each { |num| value = 10 * value + num }

  if string.start_with?('-')
    -value
  else
    value
  end
end


p string_to_signed_integer('4321')
p string_to_signed_integer('-570')
p string_to_signed_integer('+100')
