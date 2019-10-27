=begin
  Consider the following program.

  Update this code so that when you run it, you see the following output:

  My cat Pudding is 7 years old and has black and white fur.
  My cat Butterscotch is 10 years old and has tan and white fur.
=end

class Pet
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Pet
  def initialize(name, age, colors)
    super(name, age)
    @colors = colors
  end

  def to_s
    "My cat #{@name} is #{@age} years old and has #{@colors} fur."
  end
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch

# Since Cat#new requires arguments that differ from Pets#new, we must define an initialize method for Cat,
# and that method must be sure to call super.
# Additionally, the fact that the two initialize methods take different arguments also forces us to supply the correct arguments to super.
