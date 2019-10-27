=begin
  Using the code from the previous exercise,
  add an #initialize method that prints I'm a cat! when a new Cat object is initialized.

  Expected output:

  I'm a cat!
=end


class Cat
  def initialize
    puts "I'm a cat!"
  end
end

kitty = Cat.new

# The #initialize method runs when we instantiate a new object.
# It gets run when the class invokes the ::new method.
# #initialize is useful for setting up -- initializing -- an object so the object is ready for immediate use.
