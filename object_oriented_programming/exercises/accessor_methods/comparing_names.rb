=begin
  Using the following code, add the appropriate accessor methods.
  Keep in mind that the last_name getter shouldn't be visible outside the class, while the first_name getter should be visible outside the class.

  Expected output:

  false
=end

class Person
  attr_accessor :first_name
  attr_writer :last_name

  def first_equals_last?
    first_name == last_name
  end

  private

  attr_reader :last_name
end

person1 = Person.new
person1.first_name = 'Dave'
person1.last_name = 'Smith'
puts person1.first_equals_last?


# When handling data within a class, sometimes certain data needs to be kept private,
# meaning that only the object knows what the data is.
# In this case, we want to control access to @last_name.