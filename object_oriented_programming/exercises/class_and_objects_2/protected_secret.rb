# Using the following code, add an instance method named compare_secret that compares the value of @secret
# from person1 with the value of @secret from person2.
# Expected output: false

class Person
  attr_writer :secret

  def compare_secret(other_person)
    secret == other_person.secret
  end

  protected
  # protected methods allow access between class instances, while private methods don't.
  # it cannot be invoked from outside the class.

  attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'

person2 = Person.new
person2.secret = 'Shh.. this is a different secret!'

puts person1.compare_secret(person2)
