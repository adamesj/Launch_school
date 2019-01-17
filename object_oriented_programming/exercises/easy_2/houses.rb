# Assume you have the following code:

class House
  attr_reader :price
  include Comparable

  def initialize(price)
    @price = price
  end

  def <=>(other)
    price <=> other.price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

# Modify the House class so that the above program will work. You are permitted to define only one new method in House.
# Expected output:
# Home 1 is cheaper
# Home 2 is more expensive

=begin
  Instead, all you need to do is include the Comparable mixin, and define one method: <=>.
  The <=> method should return 0 if the two objects are "equal", 1 if the caller is greater than the other object,
  and -1 if the caller is less than the other object. Often, as here,
  the comparison will boil down to comparing numbers or strings, both of which already have a <=> operator defined.
  Thus, you rarely have to write an involved #<=> method.

  You can also compare houses by defining custom greater than and less than methods.
  Other attributes to compare may be size (sq feet), years old, room size etc.
=end