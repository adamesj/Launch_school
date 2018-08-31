# You run the following code...

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

# ...and get the following error message:

# TypeError: no implicit conversion of String into Integer
#   from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

# In line 4 we are trying to change the element at index 'margaret' to 'jody'
# Ruby is expecting an integer and instead got a string.
# To correct this we can rewrite line 4 as names[3] = 'jody'