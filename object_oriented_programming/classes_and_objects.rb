require 'pry'

# Given the below usage of the Person class, code the class definition.

# class Person
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
# end

# bob = Person.new('bob')
# bob.name                  # => 'bob'
# bob.name = 'Robert'
# bob.name                  # => 'Robert'

# Modify the class definition from above to facilitate the following methods. Note that there is no name= setter method now.

# class Person
#   attr_reader :name, :first_name
#   attr_accessor :last_name

#   def initialize(first_name, last_name="")
#     @first_name = first_name
#     @last_name = last_name
#   end

#   def name
#     if @last_name == ""
#       @first_name
#     else
#       @first_name + ' ' + @last_name
#     end
#   end
# end

# bob = Person.new('Robert')
# p bob.name                  # => 'Robert'
# p bob.first_name            # => 'Robert'
# p bob.last_name             # => ''
# bob.last_name = 'Smith'
# p bob.name                  # => 'Robert Smith'

# Now create a smart name= method that can take just a first name or a full name,
# and knows how to set the first_name and last_name appropriately.

# class Person
#   attr_accessor :first_name, :last_name

#   def initialize(full_name)
#     halves = full_name.split
#     @first_name = halves.first
#     @last_name = halves.size > 1 ? halves.last : ""
#   end

#   def name
#     if @last_name == ''
#       @first_name
#     else
#       @first_name + ' ' + @last_name
#     end
#   end

#   def name=(name)
#     full_name = name.split
#     if full_name.size > 1
#       @first_name = full_name.first
#       @last_name = full_name.last
#     else
#       @first_name = full_name.first
#     end
#   end
# end


# bob = Person.new('Robert')
# p bob.name                  # => 'Robert'
# p bob.first_name            # => 'Robert'
# p bob.last_name             # => ''
# bob.last_name = 'Smith'
# p bob.name                  # => 'Robert Smith'

# bob.name = "John Adams"
# p bob.first_name            # => 'John'
# p bob.last_name             # => 'Adams'

# bob = Person.new('Robert Smith')
# rob = Person.new('Robert Smith')
# p bob.name == rob.name

# # What does the below print out?

# bob = Person.new("Robert Smith")
# puts "The person's name is: #{bob}"

# This should output:
# The person's name is: <Bob object>
# the Person object assigned to the bob variable was created when we instantiated a new Person object.


# Add a to_s method to the class:

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    halves = full_name.split
    @first_name = halves.first
    @last_name = halves.size > 1 ? halves.last : ""
  end

  def name
    if @last_name == ''
      @first_name
    else
      @first_name + ' ' + @last_name
    end
  end

  def name=(name)
    full_name = name.split
    if full_name.size >= 2
      @first_name = full_name.first
      @last_name = full_name.last
    else
      @first_name = full_name.first
    end
  end

  def to_s
    name
  end
end

# What does the below output?
bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"

# => The person's name is: Robert Smith
# Ruby automatically calls the to_s instance method on the expression between the #{}
# and since we overwrote the to_s method to return the object's name, when the bob variable is interpolated, it will return
# the value of the to_s method.













