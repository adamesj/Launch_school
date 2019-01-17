# Create a class called MyCar.

# When you initialize a new instance or object of the class,
# allow the user to define some instance variables that tell us the year, color, and model of the car.

# Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well.

# Create instance methods that allow the car to speed up, brake, and shut the car off.

# Add an accessor method to your MyCar class to change and view the color of your car.

# Then add an accessor method that allows you to view, but not modify, the year of your car.

class MyCar
  attr_accessor :color, :model, :year

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    "You are now crusing at #{@current_speed} mph!"
  end

  def brake(number)
    @current_speed -= number
    "You are slowing down to #{@current_speed} mph..."
  end

  def current_speed
    "You are now going #{@current_speed}"
  end

  def turn_off
    @current_speed = 0
    "Time to park!"
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
end

# honda = MyCar.new(2000, "gray", "civic")
# p honda
# p honda.speed_up(20)
# p honda.brake(10)
# p honda.turn_off
# honda.color = "blue"
# p honda
# p honda.year
# p honda.spray_paint("green")
# p honda

# p MyCar.gas_mileage(312, 16)
accord = MyCar.new("1999", "green", "accord")
puts accord



