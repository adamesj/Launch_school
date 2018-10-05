# Write a method that takes two arguments, a string and positive integer, and prints the string as many times as the
# integer indicates.

# Input:
#  - A string of characters
#  - An integer

# Output:
#  - The string of characters printed the number of times indicated by the integer

# Example: ('Hello', 3)
#          Hello
#          Hello
#          Hello


def repeat(string, number)
  number.times do
    puts string
  end
end

repeat('Hello', 3)