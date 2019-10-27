# Define a class Meetup with a constructor taking a month and a year
# and a method day(weekday, schedule)
# where weekday is one of :monday, :tuesday, etc
# and schedule is :first, :second, :third, :fourth, :last or :teenth.

# Date#wday returns day of the week represented from 0-6 (Sun-Sat)
# :teenth is any day from 13-19
# { monday: 1, tuesday: 2, wednesday: 3, thursday: 4, 
#   friday: 5, saturday: 6, sunday: 7 }

require 'pry'
require 'date'

class Meetup
  WEEKDAYS = {  monday: 1, tuesday: 2, wednesday: 3, thursday: 4, 
                friday: 5, saturday: 6, sunday: 7 }
  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, schedule)
    if schedule == :first
      1.upto(31) do |date|
        if Date.new(@year, @month, date).cwday == WEEKDAYS[weekday]
          return Date.new(@year, @month, date)
        end
      end

    elsif schedule == :second
      days = []
      1.upto(31) do |date|
        if Date.new(@year, @month, date).cwday == WEEKDAYS[weekday]
          days << Date.new(@year, @month, date).cwday
        end

        return Date.new(@year, @month, date) if days.size == 2
      end

    elsif schedule == :third
      days = []
      1.upto(31) do |date|
        if Date.new(@year, @month, date).cwday == WEEKDAYS[weekday]
          days << Date.new(@year, @month, date).cwday
        end

        return Date.new(@year, @month, date) if days.size == 3
      end

    elsif schedule == :fourth
      days = []
      1.upto(31) do |date|
        if Date.new(@year, @month, date).cwday == WEEKDAYS[weekday]
          days << Date.new(@year, @month, date).cwday
        end

        return Date.new(@year, @month, date) if days.size == 4
      end

    elsif schedule == :last
      31.downto(1) do |date|
        if Date.valid_date?(@year, @month, date) && Date.new(@year, @month, date).cwday == WEEKDAYS[weekday]
          return Date.new(@year, @month, date)
        end
      end
      
    else
      13.upto(19) do |date|
        if Date.new(@year, @month, date).cwday == WEEKDAYS[weekday]
          return Date.new(@year, @month, date)
        end
      end
    end
  end
end

meetup = Meetup.new(3, 2013)
p meetup.day(:monday, :second) # last friday of the month
