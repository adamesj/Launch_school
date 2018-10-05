# Write a method that takes two arguments: the first is the starting number, and the second is the ending number.

# Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz",
# if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# Input: Two integers
# - A starting number and an ending number

# Output:
# - If the number is divisible by 3 output "Fizz"
# - If the number is divisible by 5 output "Buzz"
# - If the number is divisible by 3 and 5 output "FizzBuzz"

def fizzbuzz(value_1, value_2)
  value_1.upto(value_2) do |value|
    if (value % 3 == 0) && (value % 5 == 0)
      puts "FizzBuzz"
    elsif value % 3 == 0
      puts "Fizz"
    elsif value % 5 == 0
      puts "Buzz"
    else
      puts value
    end
  end
end

fizzbuzz(1, 15)