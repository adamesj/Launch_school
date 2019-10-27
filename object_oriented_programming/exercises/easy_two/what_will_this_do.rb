=begin
  What will the following code print?
=end

class Something
  def initialize
    @data = 'Hello'
  end

  def dupdata # instance method
    @data + @data # will return 'HelloHello'
  end

  def self.dupdata # class method
    'ByeBye'
  end
end

thing = Something.new
puts Something.dupdata #ByeBye
puts thing.dupdata #HelloHello
