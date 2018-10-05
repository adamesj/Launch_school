require 'pry'

# Write a method that counts the number of occurences of each element in a given array.

# Input: An array of strings.
# Output: The number of occurences for each element.
# - This would be best represented by a hash.
# - The key will be the string and the value will be the number of occurences.

# Example output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

def count_occurrences(array)
  occurences = {}
  array.each { |a| occurences[a] = array.count(a) } # count takes an optional argument that can represent an element
  occurences.each do |occurence, element| # these two variables represent a key value pair
    puts "#{occurence} => #{element}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
p count_occurrences(vehicles)
