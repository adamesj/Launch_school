# Input: An integer between 1 and 3000
# Output: The roman numeral equivalent of the number inputted

# 1, 6 = I
# 2, 7 = II
# 3, 8 = III
# 4, 9 = IIII

def roman_number_converter(number)
  # using 1986
  roman = ''                                  # Represent the number of times to add the letters to the string
  roman = roman + 'M' * (number / 1000)       # 1.986 or 1
  roman = roman + 'D' * (number % 1000 / 500) # 1
  roman = roman + 'C' * (number % 500 / 100)  # 4
  roman = roman + 'L' * (number % 100 / 50)   # 1
  roman = roman + 'X' * (number % 50 / 10)    # 3
  roman = roman + 'V' * (number % 10 / 5)     # 1
  roman = roman + 'I' * (number % 5 / 1)      # 1
  roman # MDCCCCLXXXVI
end

puts roman_number_converter(1986)
puts roman_number_converter(6)
