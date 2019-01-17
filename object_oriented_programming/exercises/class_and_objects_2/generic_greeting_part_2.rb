# Using the following code, add two methods: #generic_greeting and #personal greeting.
# generic_greeting should be a class method and print a greeting that's generic to the class.
# personal_greeting should be an instance method and print a greeting that's custom to the object.

# Expected output:
# generic_greeting -> Hello! I'm a cat!
# personal_greeting -> Hello! My name is Sophie!

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end

  def personal_greeting
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')

Cat.generic_greeting
kitty.personal_greeting
