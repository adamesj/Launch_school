=begin
  Using the following code, add the appropriate accessor methods. Keep in mind that @age should only be visible to instances of Person.

  Expected output:

  false
=end

class Person
  attr_writer :age

  def older_than?(other)
    age > other.age # the age method is being invoked by an explicit receiver
  end

  protected

  attr_reader :age
end

person1 = Person.new
person1.age = 17

person2 = Person.new
person2.age = 26

puts person1.older_than?(person2)

# However, when a method is protected, only instances of the class or a subclass can call the method.
# This means we can easily share sensitive data between instances of the same class type.
