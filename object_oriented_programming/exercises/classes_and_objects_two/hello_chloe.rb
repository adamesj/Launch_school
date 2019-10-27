=begin
  Using the following code, add an instance method named #rename that renames kitty when invoked.

  Expected output:

  Sophie
  Chloe
=end

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename(new_name)
    self.name = new_name
  end
end

kitty = Cat.new('Sophie')
puts kitty.name
kitty.rename('Chloe')
puts kitty.name

# We defined an instance method rename on line 17 which accepts one argument.
# On line 18 we prepend self to name and use the setter method's special syntax
# given to us by attr_accessor to rename of the calling object's name.

# If we don't use self, then Ruby will think we are creating a local variable.
