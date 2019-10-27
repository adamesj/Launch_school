=begin
  Assume you have the following code:
  and this output:

  Home 1 is cheaper
  Home 2 is more expensive

  Modify the House class so that the program will work. You are permitted to define only one new method in House.
=end


class House
  attr_reader :price
  include Comparable #provided by Ruby

  def initialize(price)
    @price = price
  end

  def <=>(other_home)
    price <=> other_home.price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

# Instead, all you need to do is include the Comparable mixin, and define one method: <=>.
# The <=> method should return 0 if the two objects are "equal", 1 if the receiving object is greater than the other object,
# and -1 if the receiving object is less than the other object.
