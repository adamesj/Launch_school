# Given the following data structure, and without using the Array#to_h method, write some code that
# will return a hash where the key is the first item in each sub array and the value is the second item.

# create a new hash
# iterate through arr
# make each 0 index element the key
# and each 1 index element the value

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
hash = {}

arr.each do |el|
  hash[el[0]] = el[1]
end

p hash


