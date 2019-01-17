# Complete the program so that it produces the expected output:
# Expected output:
# The author of "Snow Crash" is Neil Stephenson.
# book = "Snow Crash", by Neil Stephenson.

class Book
  attr_accessor :title, :author

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# Because we are setting the values of author and title on lines 15 and 16, we need "setter" methods.
# In addition, we are "getting" the values of title and author on line 17, so we need methods to return
# the value of these instance variables.

=begin
  What do you think of this way of creating and initializing Book objects? (The two steps are separate.)
  Would it be better to create and initialize at the same time like in the previous exercise?
  What potential problems, if any, are introduced by separating the steps?
=end