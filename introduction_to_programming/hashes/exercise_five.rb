# What method could you use to find out if a Hash contains a specific value in it?
# Write a program to demonstrate this use.


# We can use has_key? method available on the Hash Class which will return a boolean
# value if the key passed in as an argument is in the hash that called the method.

cities = { "New York" => "New York City", "California" => "Los Angeles", "Florida" => "Miami", "Ohio" => "Cleveland" }

p cities.has_key?("California") # returns true
p cities.has_key?("Illinois") # returns false