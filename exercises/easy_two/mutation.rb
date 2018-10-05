# What will the following code print, and why?
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# Line 2: Initializes an array of strings.
# Line 3: Initializes an empty array.
# Line 4: Iterates through array1, adding each element of array1 to array2.
# Line 5: Iterates through array1, mutates any strings that start with the letter C or S to all caps.
# Line 6: Outputs array2.

# array2 contains the same references to the string objects as array1.
# Going back to the previous exercise, array2 references the same objects as array1, and line 5
# is permanently mutating the elements that meet the condition. As a result, any changes made to array1
# will happen to array2.

# The output of line 6 will be:
# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo
