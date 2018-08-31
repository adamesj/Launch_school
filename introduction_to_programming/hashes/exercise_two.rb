# Look at Ruby's merge method.
# Notice that it has two versions.
# What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

# merge returns a new hash containing a combination of key/value pairs from two hashes.
# If no block is given, the values for entries with duplicate keys will be replaced by the
# second hash that was passed in as an argument.
# This will not mutate hash_one.

puts "merge method example:"

hash_one = { name: "Joe", age: 42, occupation: "teacher"}
hash_two = { name: "Geraldine", age: 42, occupation: "designer" }

combined_hash = hash_one.merge(hash_two)

p hash_one
p combined_hash

puts ""
puts ""

# merge! on the other hand, is destructive and will replace the contents of the hash
# that calls the method with the hash that is passed in

puts "merge! method example:"

hash_one = { name: "Joe", age: 42, occupation: "teacher"}
hash_two = { name: "Geraldine", age: 42, occupation: "designer" }

combined_hash = hash_one.merge!(hash_two)

p hash_one
p combined_hash