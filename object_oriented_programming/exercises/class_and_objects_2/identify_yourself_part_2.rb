# Update the following code so that it prints I'm Sophie! when it invokes puts kitty.
# Expected output: I'm Sophie!
# We need to override the to_s method. puts calls to_s for every argument it gets passed to convert the value to an appropriate string representation.

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    "I'm #{name}"
  end
end

kitty = Cat.new('Sophie')
puts kitty
