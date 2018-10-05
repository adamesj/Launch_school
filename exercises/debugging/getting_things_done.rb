# given number of elements from one array to another

def move(n, from_array, to_array)
  # Every recursion needs a base case, a condition under which it will stop.
  return if n == 0
  to_array << from_array.shift # remove first element and append it to to_array
  move(n - 1, from_array, to_array) # this is an unstoppable recursion which results in the error
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']