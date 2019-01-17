class Dog
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end
end

teddy = Dog.new
puts teddy.speak
puts teddy.swim

# One problem is that we need to keep track of different breeds of dogs,
# since they have slightly different behaviors.
# For example, bulldogs can't swim, but all other dogs can.

# Create a sub-class from Dog called Bulldog overriding the swim method to return "can't swim!"

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

roscoe = Bulldog.new
puts roscoe.speak
puts roscoe.swim

# Let's create a few more methods for our Dog class.

class Animal
  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Dog < Animal
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

# Create a new class called Cat, which can do everything a dog can, except swim or fetch.

class Cat < Animal
  def speak
    'meow!'
  end
end


# What is the method lookup path and how is it important?
# When we call a method on the first class, Ruby looks for it there, if it is not there, then it will
# look for that method in the parent class and the parent of that parent's class until it finds it. (Reveals the method lookup chain)
# It can be useful in error handling so that we can see if a method exists for an object.









