=begin
  Create a module named Transportation that contains three classes: Vehicle, Truck, and Car. Truck and Car should both inherit from Vehicle.
=end

module Transportation
  class Vehicle
  end

  class Truck < Vehicle
  end

  class Car < Vehicle
  end
end

# Modules can also be used to group classes together. This is also known as namespacing.
# Grouping classes in a module can also help avoid collision with classes of the same name.