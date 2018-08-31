# What will the following programs return?
# What is value of arr after each?

arr = ["b", "a"]
arr = arr.product(Array(1..3)) # creates a new array [["b", 1], ["a", 1], ["b", 2], ["a", 2] ["b", 3], ["a", 3]]
arr.first.delete(arr.first.last)

# returns 1 from the first pair of arrays and permanently modifies the array

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)

# returns [1, 2, 3] from the first pair of arrays and permanently modifies the array

# In both examples # we are deleting the last element from the first pair of arrays