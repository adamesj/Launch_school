# Using the following code, add a method named #identify that returns its calling object.

# Expected output: #<Cat:0x007ffcea0661b8 @name="Sophie"> (object id will be different)

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def identify
    self
    # self is used because it refers to the calling object.
  end
end

kitty = Cat.new('Sophie')
p kitty.identify
