# What does each method return in the following example?
arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5)
# returns 8

arr.index[5]
# return an error of undefined [] for Enumerator
# according to the ruby docs, the [] syntax isn't used for the index method

arr[5]
# returns 8

