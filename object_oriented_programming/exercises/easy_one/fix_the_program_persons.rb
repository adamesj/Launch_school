=begin
  Complete this program so that it produces the expected output:

  John Doe
  Jane Smith
=end


class Person
  def initialize(first_name, last_name)
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
  end

  def to_s
    "#{@first_name} #{@last_name}"
  end

  def first_name= (value)
    @first_name = value.capitalize
  end

  def last_name= (value)
    @last_name = value.capitalize
  end
end

person = Person.new('john', 'doe')
puts person

person.first_name = 'jane'
person.last_name = 'smith'
puts person

# We need to manually define a setter method that capitalizes the value that is reassigned to the instance variables for first_name and last_name.