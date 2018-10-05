# Create a method that takes 2 arguments, an array and a hash.
# - The array will contain 2 or more elements. It will be joined by spaces to create a person's name.
# - The hash will contain two keys, :title and :occupation

# Input:
# - An array containing strings for a person's first, middle and last name.
# - A hash containing the person's title and occupation.

# Output:
# - A greeting with the person's full name (joined by spaces) and title with occupation in a string.

def greetings(array, hash)
  full_name = array.join(" ")
  title = hash[:title]
  occupation = hash[:occupation]
  "Hello, #{full_name}! Nice to have a #{title} #{occupation} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
