# First example

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# The output is:
# Alice
# Bob

# name points to 'Bob', then save_name points to the same object as name.
# Then name points to a new object 'Alice', but save_name is still pointing at 'Bob'.
# (See lesson variables as pointers)

# Second example

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# Here the output is
# BOB
# BOB

# upcase! mutated the caller and modified the existing string, which is also pointed to by the variable save_name.

# Some operations will mutate the actual address space in memory,
# thereby affecting all variables that point to that address space.
