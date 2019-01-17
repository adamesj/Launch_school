# Correct the following program so it will work properly.
# Assume that the Car class has a complete implementation;
# just make the smallest possible change to ensure that cars have access to the drive method.

module Drivable
  def drive
  end
end

class Car
  include Drivable
end

bobs_car = Car.new
bobs_car.drive

# Solution is to remove self from the method definition on line 6.
# Methods in modeules should be defined without using self.
# If you add self. to the definition, the including class will only be able to access the method by calling Drivable.drive.
# The method will also not be available as an instance method to objects.