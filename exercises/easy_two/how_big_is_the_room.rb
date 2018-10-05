# Build a program that asks a user for the length and width of a room in meters and then
# displays the area of the room in both square meters and square feet.

# Input: Two integers
# - One integer represents the length, the other the width in meters

# Output: The area of the room
# - Area = length x width

# 1 square meter == 10.7639 square feet

puts "Enter the length of the room in meters:"
length = gets.to_f

puts "Enter the width of the room in meters:"
width = gets.to_f

area = length * width
square_feet = (area * 10.7639).round(2)

puts "The area of the room is #{area} square meters (#{square_feet} square feet)."
