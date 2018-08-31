# Convert a string to an integer without using to_i or Integer()
# digits 0-9

# We take each digit and add it to 10 times the previous value,
#which yields the desired result in almost no time. For example, if we have 4, 3, and 1, we compute the result as:

# 10 * 0 + 4 -> 4
# 10 * 4 + 3 -> 43
# 10 * 43 + 1 -> 431

def string_to_integer(string)
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
  value
end

p string_to_integer('41')
