=begin
  Using the following code, create two classes - Truck and Car - that both inherit from Vehicle.

  Expected output:

  1994
  2006
=end

class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
end

class Car < Vehicle
end

truck1 = Truck.new(1994)
puts truck1.year

car1 = Car.new(2006)
puts car1.year

# In the solution, Truck and Car inherit @year from Vehicle as well as the instance method #year. The < symbol is used to denote inheritance between classes.