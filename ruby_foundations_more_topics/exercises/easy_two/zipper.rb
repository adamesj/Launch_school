=begin
  Write your own version of zip that does the same type of operation. 
  It should take two Arrays as arguments, and return a new Array (the original Arrays should not be changed). 
  Do not use the built-in Array#zip method. 
  You may assume that both input arrays have the same number of elements.
=end

def zip(arr1, arr2)
  # each within each
  # insert both elements as an array into an array
  new_array = []
  counter = 0
  while counter < arr1.size
    new_array << [arr1[counter], arr2[counter]]
    counter += 1
  end
  new_array
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]