=begin
  Fix the following code so it works properly:

  Should print 5678
=end

class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    total = mileage + miles
    self.mileage = total # The problem with this code is that we are attempting to use a setter method for the @mileage instance variable.
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage

# On line 16, we need to prepend self to the instance method mileage of the car class. Otherwise, Ruby will think we are setting local variables.
