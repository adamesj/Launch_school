require 'pry'

# Given this data structure write some code to return an array which contains
# only the hashes where ALL the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# iterate through each hash in the array
# check if all elements in the value are even
  # if even, add to new array
  # otherwise do not add

arr.select do |hsh|
  # if all of the values in hsh are even
  hsh.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end