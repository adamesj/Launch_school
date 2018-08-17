# How would you order this array of number strings by descending numeric value?
arr = ['10', '11', '9', '7', '8']

numeric_arr = arr.map do |a|
  a.to_i
end

numeric_arr.sort! do |a, b|
  b <=> a
end

p numeric_arr