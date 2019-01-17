=begin
  Complete this program so that it produces the expected output:
  Expected output:
  The author of "Snow Crash" is Neil Stephenson.
  book = "Snow Crash", by Neil Stephenson.
=end

class Book
  attr_reader :author, :title

  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# Further Exploration
=begin
  What are the differences between attr_reader, attr_writer, and attr_accessor?
    - attr_reader provides us with "getter" methods that return the value of the instance variable.
    - attr_writer provides us with "setter" methods that lets us change the value of the instance variable.
    - attr_accessor provides us with both a "getter" and "setter" method for the instance variable we pass in.

  Why did we use attr_reader instead of one of the other two?
    - We only need to use attr_reader because the code provided does not need to reassign or set values for the instance variables.
    The only time we are setting values is when we create a new instance of the Book class.

  Would it be okay to use one of the others? Why or why not?
    - Not necessarily because we would be exposing behavior that was not originally intended.

  Instead of attr_reader, suppose you had added the following methods to this class:

  def title
    @title
  end

  def author
    @author
  end

  Would this change the behavior of the class in any way?
  If so, how? If not, why not? Can you think of any advantages of this code?

  This would not change the behavior of the class because it is outputting the same values we would get from
  attr_reader. For the sake of saving space and having to write more "getter" methods, attr_reader is the preferred
  choice as it offers a much more cleaner syntax.
=end