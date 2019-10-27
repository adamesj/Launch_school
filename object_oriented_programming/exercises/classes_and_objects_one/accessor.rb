=begin
  Using the code from the previous exercise, replace the getter and setter methods using Ruby shorthand.

  Expected output:

  Hello! My name is Sophie!
  Hello! My name is Luna!
=end

class Cat
  # attr_reader :name
  # attr_writer :name
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.name = 'Luna'
kitty.greet

# The attr_accessor method gives us the functionality of a getter and setter method when defined in a class.
# Ruby has a shorthand way of automatically creating both getter and setter methods using the attr_accessor method.

# Using attr_accessor is convenient with an instance variable like
# @name because we want to both retrieve the name and change it.
