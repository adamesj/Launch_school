# Create a superclass class Vehicle for your MyCar class to inherit from.
# Move the behavior that isn't specific to the MyCar class to the superclass.
# Create a constant in your MyCar class that stores information about the vehicle that makes it different from other Vehicles.
# Create a MyTruck class that inherits from Vehicle that also has a constant that defines what separates it from MyCar.
# Add a class variable to your superclass that can keep track of the number of objects created that inherit from the superclass.
# Create a method to print out the value of this class variable.
# Create a module that you can mix in to ONE of your subclasses that describes behavior unique to the subclass.
# Write a method called age that calls a private method to calculate the age of the vehicle. Make sure it is not available outside of the class.

class Vehicle
  attr_accessor :color
  attr_reader   :model, :year

  @@number_of_vehicles = 0

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def speed_up(number)
    @current_speed += number
    "You are now crusing at #{@current_speed} mph!"
  end

  def brake(number)
    @current_speed -= number
    "You are slowing down to #{@current_speed} mph..."
  end

  def turn_off
    @current_speed = 0
    "Time to park!"
  end

  def current_speed
    "You are now going #{@current_speed}"
  end

  def spray_paint(color)
    self.color = color
    "Look at that nice coat of #{color}."
  end

  def self.gas_mileage(miles_driven, gallons_used)
    "You're getting #{miles_driven / gallons_used} miles per gallon."
  end

  def to_s
    "This is a #{color} #{model} that was made in #{year}."
  end

  def self.total_number_of_vehicles
    @@number_of_vehicles
  end

  def age_of_vehicle
    "#{calculate_age} years old."
  end

  private

  def calculate_age
    current_year = Time.now.year
    current_year - self.year
  end
end

module Towable # remember it is common practice to append -able to the module name
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def initialize(year, color, model)
    super
  end
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
  include Towable

  def initialize(year, color, model)
    super
  end
end

ford = MyTruck.new(2000, "blue", "F-150")
honda = MyCar.new(2001, "red", "Civic")
p ford
p honda
p ford.can_tow?(1300)
p Vehicle.total_number_of_vehicles

# Print to the screen your method lookup for the classes you have created.
puts MyTruck.ancestors
puts "---------------"
puts MyCar.ancestors
puts "---------------"
puts Vehicle.ancestors

p honda.age_of_vehicle





