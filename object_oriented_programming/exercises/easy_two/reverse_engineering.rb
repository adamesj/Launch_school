=begin
  Write a class that will display:

  ABC
  xyz

  when the following code is run:
=end

class Transform
  def initialize(letters)
    @letters = letters
  end

  def uppercase
    @letters.upcase
  end

  def self.lowercase(string)
    string.downcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')

# This exercise points out how to distinguish between instance and class methods.
