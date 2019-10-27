=begin
  If the phone number is less than 10 digits assume that it is bad number
  If the phone number is 10 digits assume that it is good
  If the phone number is 11 digits and the first number is 1, trim the 1 and use the last 10 digits
  If the phone number is 11 digits and the first number is not 1, then it is a bad number
  If the phone number is more than 11 digits assume that it is a bad number
=end

class PhoneNumber
  def initialize(number)
    @number = number
  end

  def number
    formatted_number = @number.gsub(/[()-.]/, '').delete(' ')
    if formatted_number.match(/^[0-9]{10}$/)
      formatted_number
    elsif formatted_number.match(/^[0-9]{11}$/) && formatted_number[0] == "1"
      formatted_number[1..-1]
    else
      '0000000000'
    end
  end

  def area_code
    number[0..2]
  end

  def prefix
    number[3..5]
  end

  def line_number
    number[6..-1]
  end

  def to_s
    "(#{area_code}) #{prefix}-#{line_number}"
  end
end