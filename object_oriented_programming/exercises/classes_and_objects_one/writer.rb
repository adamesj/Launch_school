=begin
  Using the code from the previous exercise, add a setter method named #name.
  Then, rename kitty to 'Luna' and invoke #greet again.

  Expected output:

  Hello! My name is Sophie!
  Hello! My name is Luna!
=end

class Cat
  attr_reader :name
  attr_writer :name

  def initialize(name)
    @name = name
  end

  # def name=(name)
  #   @name = name
  # end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.name = 'Luna'
kitty.greet

# Like getter methods, setter methods can be invoked on the object.
# In this exercise, we use the setter method to rename kitty.
# Setter methods can be used to change the value of an object's instance variable.
