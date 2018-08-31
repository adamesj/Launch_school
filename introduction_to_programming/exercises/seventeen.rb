# What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# Hashes are equal if they each contain the same number of keys and if each
# key-value pair is equal to the corresponding elements in the other hash.
# How the key-value pairs are ordered does not matter.

# This should output "These hashes are the same!"