# Write a method that takes a year as input and returns the century.

# "th" years are those ending in 4, 5, 6, 7, 8, 9, or 0.
# Additionally, the 11th, 12th, and 13th centuries are exceptions also ending in "th".
# Years ending in 1 are "st" years.
# Years ending in 2 are "nd" years.
# Years ending in 3 are "rd" years.

def century(year)
  century = year / 100 + 1                # Century is the current year divided by 100 plus 1.
  century -1 if year % 100 == 0           # If the year is a multiple of 100 substract 1.
  century.to_s + century_suffix(century)  # Concatenate the century with the suffix.
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100) # Return 'th' if the result of century % 100 is included in the array
  last_digit = century % 10                           # This will give us the last digit

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
