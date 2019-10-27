=begin
  Modify the following code so that Hello! I'm a cat! is printed when Cat.generic_greeting is invoked.

  Expected output:

  Hello! I'm a cat!
=end

class Cat
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end
end

Cat.generic_greeting

# The code on line 15 tells us that ::generic_greeting is a class method because
# It's being invoked on the Cat class, not an instance of Cat.
# When defining a class method, the method name is prepended with self,
# like this: self.generic_greeting. In the solution, self refers to the Cat class.

# Further Exploration: What happens when you try to run this?
kitty = Cat.new
# If a new instance of the Cat class is saved in a variable then the code on line 25 will work
# because the class method returns the class of the object and generic_greeting can be called directly on the class.
kitty.class.generic_greeting
