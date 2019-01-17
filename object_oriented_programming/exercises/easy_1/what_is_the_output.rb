# What output does this code print? Fix this class so that there are no surprises waiting in store for the unsuspecting developer.

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    @name.upcase!
    "My name is #{@name}."
  end
end

# name = 'Fluffy'
# fluffy = Pet.new(name)
# puts fluffy.name # Fluffy
# puts fluffy # My name is FLUFFY.
# puts fluffy.name # FLUFFY
# puts name # FLUFFY

=begin
  This can be fixed by removing name.upcase! from the to_s method as it permanently modifies the @name variable.
  That to_s inside the initialize method? We need that for the challenge under Further Exploration
=end

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s # this affects the output when calling puts on a Pet object
    "My name is #{@name.upcase}."
  end
end

# What would happen in this case?

name = 42
fluffy = Pet.new(name)  # "42"
name += 1               # 43
                                          # What is happening behind the scenes:
puts fluffy.name        # 42                (fluffy.name.to_s)  called on the instance variable
puts fluffy             # My name is 42.    (fluffy.to_s)       called on the object
puts fluffy.name        # 42                (fluffy.name.to_s)  called on the instance variable
puts name               # 43

















