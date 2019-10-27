=begin
  Using the code from the previous exercise,
  add a getter method named #name and invoke it in place of @name in #greet.

  Expected output:

  Hello! My name is Sophie!
=end

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # def name
  #   @name
  # end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet

# We've added an instance method #name that returns the value of the invoking object's @name instance variable.
# This is also known as a 'getter' method.
# When our cat object invokes the #greet instance method, it will output the return value of the #name
# as part of the string.
# Ruby automatically gives us a getter method with the attr_reader method which takes in a symbol as an argument.
