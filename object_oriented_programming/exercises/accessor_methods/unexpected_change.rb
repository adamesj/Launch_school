=begin
  Modify the following code to accept a string containing a first and last name. The name should be split into two instance
  variables in the setter method, then joined in the getter method to form a full name.

  Expected output:
  John Doe

  Created a setter method that creates two instance variables (first_name, last_name)
=end

class Person

  def name=(name)
    full_name = name.split(" ")
    @first_name = full_name[0]
    @last_name = full_name[1]
    # @first_name, @last_name = name.split(' ')
  end

  def name
    "#{@first_name} #{@last_name}"
  end
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name
