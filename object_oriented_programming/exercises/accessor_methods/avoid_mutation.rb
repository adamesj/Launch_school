=begin
  The following code is flawed. It currently allows @name to be modified from outside the method via a destructive method call.
  Fix the code so that it returns a copy of @name instead of a reference to it.
  Expected ouput:
  James

  we have a getter method for name
  @name is initialized when a new Person object is instantiated
  reverse! changes the value of the @name instance variable
  reverse! should return a copy of @name and not modify the original
  should the getter method be private/protected? or should it return a copy of @name?

  we need to prevent reverse! from permanently modifying the @name variable
=end

class Person

  def initialize(name)
    @name = name
  end

  def name
    # should return a copy of @name
    name_copy = ''
    name_copy += @name
    # this can also be accomplished with the .clone method which returns a shallow copy of the object.
    # The instance variables of obj are copied, but not the objects they reference.
  end
end

person1 = Person.new('James')
person1.name
person1.name.reverse! # chains reverse! to the instance method name
puts person1.name
