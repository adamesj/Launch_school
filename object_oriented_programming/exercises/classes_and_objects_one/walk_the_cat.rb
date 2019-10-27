=begin
  Using the following code, create a module named Walkable that contains a method named #walk.
  This method should print Let's go for a walk! when invoked.
  Include Walkable in Cat and invoke #walk on kitty.

  Expected output:

  Hello! My name is Sophie!
  Let's go for a walk!
=end

module Walkable
  def walk
    puts "Let's go for a walk!"
  end
end

class Cat
  attr_reader :name

  include Walkable

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.walk

# Modules can be used to extend the functionality of certain classes.
# In the Cat class we use the reserve word 'include' followed by the module name in order
# to mix-in the Walkabale module into our Cat class.
# As a result, every instance of the Cat class can now invoke the #walk method.
