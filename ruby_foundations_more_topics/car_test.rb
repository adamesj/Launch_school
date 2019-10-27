require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'car'

class CarTest < MiniTest::Test
  def test_wheels # tests are written by creating an instance variable that starts with test_.
    skip
    car = Car.new
    assert_equal(4, car.wheels) # assert that when a new car object invokes the wheels method, it will return 4
  end

  def test_bad_wheels
    skip
    car = Car.new
    assert_equal(3, car.wheels)
  end

  def setup
    @car = Car.new
  end

#   def test_car_exists
#     car = Car.new
#     assert(car)
#   end

#   def test_car_wheels
#     car = Car.new
#     assert_equal(4, car.wheels)
#   end

#   def test_name_is_nil
#     car = Car.new
#     assert_nil(car.name)
#   end

#   def test_raise_initialize_with_arg
#     assert_raises(ArgumentError) do
#       car = Car.new(name: "Joey")         # this code raises ArgumentError, so this assertion passes
#     end
#   end

#   def test_instance_of_car
#     car = Car.new
#     assert_instance_of(Car, car)
#   end

#   def test_includes_car
#     car = Car.new
#     arr = [1, 2, 3]
#     arr << car
  
#     assert_includes(arr, car)
#   end
  
  # assert_includes calls assert_equal in its implementation, and Minitest counts that call
  # as a separate assertion. For each assert_includes call, you will get 2 assertions, not 1.

  # Refactor

  def test_car_exists
    assert(@car)
  end

  def test_car_wheels
    assert_equal(4, @car.wheels)
  end

  def test_name_is_nil
    assert_nil(@car.name)
  end

  def test_raise_initialize_with_arg
      assert_raises(ArgumentError) do
        Car.new(name: "Joey") # this code raises ArgumentError, so this assertion passes
      end
  end

  def test_instance_of_car
    assert_instance_of(Car, @car)
  end

  def test_includes_car
    arr = [1, 2, 3]
    arr << @car
    assert_includes(arr, @car)
  end

  def test_value_equality
    car1 = Car.new
    car2 = Car.new

    assert_equal(car1, car2)
    assert_same(car1, car2)
  end
end