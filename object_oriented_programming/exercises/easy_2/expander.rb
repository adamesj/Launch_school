# What is wrong with the following code? What fix(es) would you make?

class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    # remove self
    expand(3)
  end

  private

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander

=begin
  Note that in this case, we can not use self.expand, because the expand method is private.
  Remember that self.expand is equivalent to instance.expand, which is not allowed for private methods.
  Changing the private keyword to protected will solve the issue.
  In summary, private methods are not accessible outside of the class definition at all,
  and are only accessible from inside the class when called without self.
  Private methods cannot be invoked by an instance of the class. Only other methods can call a private method.
=end
