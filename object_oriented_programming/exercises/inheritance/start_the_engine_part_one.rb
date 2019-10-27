=begin
  Change the following code so that creating a new Truck automatically invokes #start_engine.

  Expected output:

  Ready to go!
  1994
=end

class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  def initialize(year)
    super
    puts 'Ready to go!'
  end
end

truck1 = Truck.new(1994)
puts truck1.year

# super without any arguments forwards all arguments passed into the invoking method to it's parent class.

# When you invoke #super within a method, Ruby looks in the inheritance hierarchy for a method with the same name.
# In the solution, we use #super to invoke Vehicle#initialize, then we invoke #start_engine.
# Invoking #super without parentheses passes all arguments to Vehicle#initialize.