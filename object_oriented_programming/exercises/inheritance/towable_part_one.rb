=begin
  Using the following code, create a Towable module that contains a method named tow that prints I can tow a trailer! when invoked.
  Include the module in the Truck class.

  Expected output:

  I can tow a trailer!
=end

module Towable
  def tow
    puts 'I can tow a trailer!'
  end
end

class Truck
  include Towable
end

class Car
end

truck1 = Truck.new
truck1.tow

# Modules can be used to extend the functionality to specific classes (but not all).
# In the solution, we use the reserved word include to give Truck access to the #tow method in Towable.