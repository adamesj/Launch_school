def integer_to_string(number)
  number.digits.reverse.join
end

p integer_to_string(432)