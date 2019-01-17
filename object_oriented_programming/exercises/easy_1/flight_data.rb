=begin
  Consider the following class definition.
  There is nothing technically incorrect about this class, but the definition may lead to problems in the future.
  How can this class be fixed to be resistant to future problems?
=end

class Flight
  attr_accessor :database_handle

  def initialize(flight_number)
    @database_handle = Database.init # runs the initialize method on a new Database object
    @flight_number = flight_number
  end
end

flight = Flight.new(2345)
puts flight

# If we were to try and create a new flight object, we would get the following error:
# flight_data.rb:11:in `initialize': uninitialized constant Flight::Database (NameError)
# The solution is to remove the attr_accessor because it provides easy access to the @database_handle variable.
# Users of this class should have no need for it,
# so we should not be providing direct access to it.
