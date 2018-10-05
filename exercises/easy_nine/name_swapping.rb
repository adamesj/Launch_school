# Write a method that takes a first name, a space, and a last name passed as a single String argument,
# and returns a string that contains the last name, a comma, a space, and the first name.

# Example: ('Joe Roberts') == 'Roberts, Joe'

# A string containing a first name, space, and last name is given as an argument.
# The first and last name change places and are separated by a comma and space.
# What if the person has a middle name?

def swap_name(string)
  # split the string into an array
  full_name = string.split
  # output a string formatted with the last element of the array, a comma, space and the first element in the array
  "#{full_name[-1]}, #{full_name[0]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
