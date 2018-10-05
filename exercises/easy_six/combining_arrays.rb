# Input: two Arrays as arguments,
# Output: returns an Array that contains all of the values from the argument Arrays w/o duplicates

def merge(array1, array2)
  merged_array = array1 << array2
  merged_array.flatten.uniq
end

p merge([1, 3, 5], [3, 6, 9])