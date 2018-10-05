# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

# An array containing multiple sub arrays is given as an argument
# each sub array has a string and number
# the string represents the item and the number is the number of items, for example
# ['apples', 3] => 3 apples
# return an array that has a copy of each string according to the number in the sub array
# ['apples', 'apples', 'apples']

def buy_fruit(fruits)
  # Initialize an empty array
  grocery_list = []
  # Iterate through each sub array, inserting the string according to the number in the sub array using
  # the times method
  fruits.each do |fruit|
    fruit[-1].times { grocery_list << fruit[0] }
  end
  grocery_list

  # Map
  # fruits.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
