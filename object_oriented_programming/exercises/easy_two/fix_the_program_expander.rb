=begin
  What is wrong with the following code? What fix(es) would you make?
=end

class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    expand(3) # the problem is that expand is a private method and it is being called by self.
  end

  private

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander


# we can either remove self from line 11 or change the private method to protected.
