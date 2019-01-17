=begin
  Using the following code, add the appropriate accessor methods so that
  @name is returned with the prefix 'Mr.'

  Expected Output:
  Mr. James
=end

# We need a getter method for the name instance variable
# For the name setter method, it should return the name passed in as an argument
# with 'Mr.' prefixed to it.

class Person
  attr_reader :name

  def name=(name)
    @name = "Mr. #{name}"
    # or @name = 'Mr. ' + name
  end
end

person1 = Person.new
person1.name = 'James'
puts person1.name
