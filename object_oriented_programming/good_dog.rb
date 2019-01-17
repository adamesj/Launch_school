class GoodDog
  attr_accessor :name, :height, :weight

  @@number_of_dogs = 0

  def initialize(name, height, weight)
    @name = name
    @height = height
    @weight = weight
    @@number_of_dogs += 1
  end

  def speak
    "#{name} says woof!"
  end

  def change_info(name, height, weight)
    self.name = name
    self.height = height
    self.weight = weight
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def self.what_am_i
    "I'm a GoodDog class!"
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
p sparky.speak
p sparky.name
p sparky.info
sparky.change_info('Spartacus', '24 inches', '45 lbs')
p sparky.info
p GoodDog.what_am_i
p GoodDog.total_number_of_dogs
