# Fix the following code so it works properly:
require 'pry'

class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    total = mileage + miles     #(new variable equal to mileage plus miles)
    @mileage = total             #(sets mileage to the total)
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage  # should print 5678


=begin
  def increment_mileage(miles)
    total = mileage + miles
    mileage = total
  end

  The problem with this code is the it is trying to mutate the return value of an instance method.
  What we should be doing is accessing the instance variable @mileage and increment its value or provide an explicit receiver like so: self.mileage.
  However, using @mileage bypasses the setter method which may not be intended making self.mileage = total a safer option because this
  sets the value of an individual instance.
=end