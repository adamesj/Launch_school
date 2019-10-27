=begin
  Using the following code, create a class named Person with an instance variable named @secret.
  Use a setter method to add a value to @secret, then use a getter method to print @secret.

  Expected output:

  Shh.. this is a secret!
=end

class Person
  attr_accessor :secret
end


person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
puts person1.secret

# Instance methods are public by default.
# On line 11 we have used the attr_accessor method
# to automatically create a getter and setter method for secret which we can call outside of the class like we did on lines 16 and 17.