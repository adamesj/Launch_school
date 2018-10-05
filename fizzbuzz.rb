# Input: starting number and ending number
# Output:
# if number is divisible by 3 print "Fizz"
# if number is divisible by 5 print "Buzz"
# if number is divisible by 3 and 5 print "FizzBuzz"

def fizzy(num_1, num_2)
  output = []
  num_1.upto(num_2) do |num|
    if num % 3 == 0 && num % 5 == 0
      output << "FizzBuzz"
    elsif num % 3 == 0
      output << "Fizz"
    elsif num % 5 == 0
      output << "Buzz"
    else
      output << num
    end
  end
  puts output.join(", ")
end

fizzy(1, 15)