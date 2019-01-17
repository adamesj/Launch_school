class Person
  attr_accessor :first_name, :last_name

  def initialize(name)
    @name = name
    @first_name = @name.split.first
    if @name.split.size > 1
      @last_name = @name.split.last
    else
      @last_name = ''
    end
  end

  def name #getter method
    "#{@first_name} #{@last_name}".strip #removes leading and trailing whitespace
  end

  def name=(name)
    self.first_name = name.split.first
    self.last_name = name.split.size > 1 ? name.split.last : ''
  end

  def to_s
    name
  end
end

# bob = Person.new('Robert')
# p bob.name
# p bob.first_name
# p bob.last_name
# bob.last_name = 'Smith'
# p bob.name

# Now create a smart name= method that can take just a first name or a full name, and knows how to set the first_name and last_name appropriately.

# bob.name = "John Adams"
# p bob.first_name
# p bob.last_name

# Using the class definition from step 3, let's create a few more people -- that is, Person objects.

# bob = Person.new('Robert Smith')
# rob = Person.new('Robert Smith')

# If we're trying to determine whether the two objects contain the same name, how can we compare the two objects?
# bob.name == rob.name
# You cannot compare two objects, but you can compare the string of each object's name instance method result

# Continuing with our Person class definition, what does the below print out?

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"

# Should print out The person's name is: #<Person:0x007f9e490f5cc8>

# After adding a to_s method, what does the same line of code ouput?

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"

# This will print out The person's name is: Robert Smith because we have modified the to_s method to output
#  the value returned by the name instance method










