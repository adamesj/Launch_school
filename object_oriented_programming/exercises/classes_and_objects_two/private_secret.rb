=begin
  Using the following code, add a method named share_secret that prints the value of @secret when invoked.

  Expected output:

  Shh.. this is a secret!
=end

class Person
  attr_writer :secret

  def share_secret
    puts secret
  end

  private

  attr_reader :secret #private (cannot be called outside of the class)
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!' #public
person1.share_secret #public

# Sometimes, certain instance methods don't need to be accessed outside of the class.
# Therefore, it is better to make them private methods so that it can only be invoked from within the class.