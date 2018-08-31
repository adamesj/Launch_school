# Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys.
# Then write a program that does the same thing except printing the values.
# Finally, write a program that prints both.

cities = { "New York" => "New York City", "California" => "Los Angeles", "Florida" => "Miami", "Ohio" => "Cleveland" }

puts "All keys:"
cities.keys.each do |key|
  puts key
end
puts ""

puts "All values:"
cities.values.each do |value|
  puts value
end
puts ""

puts "All keys and values:"
cities.each { |key, value| puts "#{value} is in #{key}" }