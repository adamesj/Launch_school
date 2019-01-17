# Using the following code, add an instance method named #rename that renames kitty when invoked.

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename(new_name)
    self.name = new_name
    # When invoking setter methods, they must be denoted with self.
    # We're required to use self so that Ruby knows the difference between initializing a local variable and invoking a setter method.
  end
end

kitty = Cat.new('Sophie')
p kitty.name
kitty.rename('Chloe')
p kitty.name
