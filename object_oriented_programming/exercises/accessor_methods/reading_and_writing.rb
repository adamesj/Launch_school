=begin
  Add the appropriate accessor methods to the following code.

  Expected output:

  Jessica
=end

class Person
  attr_accessor :name
end

person1 = Person.new
person1.name = 'Jessica' #setter
puts person1.name #getter