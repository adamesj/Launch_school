# What will the following code print?

class Something
  def initialize
    @data = 'Hello'
  end

  def dupdata
    @data + @data
  end

  def self.dupdata
    'ByeBye'
  end
end

thing = Something.new
puts Something.dupdata
puts thing.dupdata

=begin
  Line 18 should output ByeBye, since that is the return value of the class method.
  Line 19 should output HelloHello. When you create a new Something object, an instance variable @data is initialize
  with the value 'Hello' and the instance method is concatenating @data with itself.
=end
