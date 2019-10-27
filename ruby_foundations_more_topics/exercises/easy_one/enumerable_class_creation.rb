# For this exercise, modify the Tree class to support the methods of Enumerable.

class Tree
  include Enumerable

  def each
  end
end

# All you need to do is include Enumberable in your class and define an each method that yields each member
# of the collection.