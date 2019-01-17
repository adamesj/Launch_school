# Consider the following classes:
# Refactor these classes so they all use a common superclass, and inherit behavior as needed.

# 1) moved attr_reader :make, :model to a new Vehicle parent class.
# 2) left attr_reader :payload in the Truck class since it is unique to the Truck class.
# 3) moved the to_s method to the Vehicle class because all classes used this method.
# 4) moved the initialize method to the Vehicle class. The Truck class' initialize method
# calls super with the arguments for make and model and separately sets the payload unique to itself.
# 5) the wheels method appears to have different values for each class so there is no need to change it.

class Vehicle
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehicle
  def wheels
    4
  end
end

class Motorcycle < Vehicle
  def wheels
    2
  end
end

class Truck < Vehicle
  attr_reader :payload

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  def wheels
    6
  end
end
