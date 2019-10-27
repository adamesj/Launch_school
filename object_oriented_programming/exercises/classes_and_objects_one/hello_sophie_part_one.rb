=begin
  Using the code from the previous exercise,
  add a parameter to #initialize that provides a name for the Cat object.
  Use an instance variable to print a greeting with the provided name.
  (You can remove the code that displays I'm a cat!.)

  Expected output:

  Hello! My name is Sophie!
=end

class Cat
  def initialize(name)
    @name = name
    puts "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')

# To accept arguments upon initialization, we need to add a parameter to #initialize.
# In our solution, we accept one argument, name, and assign it to an instance variable named @name.
# The instance variable is now available to reference anywhere inside the object.