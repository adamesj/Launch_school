# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate.
# The program must compute the tip and then display both the tip and the total amount of the bill.

# Input: An integer representing the bill, another integer representing the tip (percentage)
# Output: The total amount of tip (floating point) and the total of the bill and tip (floating point)
# Formula: (percentage / 100) * total

puts "What is the bill?"
bill = gets.to_f

puts "What is the tip percentage?"
tip_percentage = gets.to_f

tip_total = (tip_percentage / 100) * bill

puts "The tip is $#{tip_total}"
puts "The total is $#{bill + tip_total}"
