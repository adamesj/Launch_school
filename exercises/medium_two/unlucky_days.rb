require 'date'

# Write a method that returns the number of Friday the 13ths in the year given by an argument.
# You may assume that the year is greater than 1752


=begin
  input: An integer representing the year
  output: An integer representing the number of occurences of Friday the 13th
  rules:
    - Year is greater than 1752
    - Ruby's Date class may be helpful here.
    - Look at how to initialize a Date object
    - Look at the friday? method
    - If the 1st is on Sunday, then the 13th will be on a Friday
=end

def friday_13th(year)
  Date.new(year).step(Date.new(year,-1,-1)).select{|d| d.friday? && d.day == 13}.size
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
