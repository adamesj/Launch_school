# Use Ruby's Array method delete_if and String method start_with?
# to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|a| a.start_with?('s')}

puts 'Removed words starting with s'

p arr

puts '----'

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|a| a.start_with?('s', 'w')}

puts 'Removed words starting with s or w'

p arr