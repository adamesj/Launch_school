# Input: number of digits
# Output: the index of the first number that equals the input (number of digits)

# given the argument of digits, produce a fibonacci sequence leading up to the number of digits


def find_fibonacci_index_by_length(digits)
  first = 1   # first number in sequence
  second = 1  # second number in sequence
  index = 2   # start the index at 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= digits

    first = second
    second = fibonacci
  end

  index
end