=begin
  Using the following code, add the appropriate accessor methods.
  Keep in mind that the last_name getter shouldn't be visible
  outside of the class, while the first_name getter should be visible outside of the class.

  Expected Output: false
=end

class Person
  attr_accessor :first_name
  attr_writer :last_name

  def first_equals_last?
    first_name == last_name # getter method for first_name and last_name
  end

  private

  def last_name # by making the getter method private, it will be unavailable outside of the class
    @last_name
  end
end

person1 = Person.new
person1.first_name = 'Dave'
person1.last_name = 'Smith'
puts person1.first_equals_last?
