# Using the multiply method from the previous exercise, write a method that computes the square of its argument

# Input: An integer
# Ouput: The square of the integer
# - Make use of the multiply method

def multiply(a, b)
  a * b
end

def square(number)
  multiply(number, number)
end

p square(5) == 25
p square(-8) == 64
