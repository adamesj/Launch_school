=begin
  Using the code from the previous exercise, move the greeting from the #initialize method
  to an instance method named #greet that prints a greeting when invoked.

  Expected output:

  Hello! My name is Sophie!
=end

class Cat
  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet

# Instance methods are available to instances of a class.
# The variable kitty is able to invoke the greet method because it stores a new instance
# of the Cat class.
