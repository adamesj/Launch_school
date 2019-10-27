=begin
  Update the following code so that, instead of printing the values,
  each statement prints the name of the class to which it belongs.

  puts "Hello"
  puts 5
  puts [1, 2, 3]

  Expected output:

  String
  Integer
  Array
=end

puts "Hello".class
puts 5.class
puts [1, 2, 3].class

# The #class method is an instance of the Object class in Ruby.
# It returns the class of the invoking object.
# It must be called with an explicit receiver as class is a reserved word in Ruby.