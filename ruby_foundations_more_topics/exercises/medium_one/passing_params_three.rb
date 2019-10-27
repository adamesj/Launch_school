# Given the following code:

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# Fill out the method calls for the problems below:

gather(items) do | *produce, carbs |
  puts produce.join(', ')
  puts carbs
end

# Expected output:
# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

puts ""

gather(items) do | fruits, *vegetables, carbs |
  puts fruits
  puts vegetables.join(', ')
  puts carbs
end

# Expected output:
# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

puts ""

gather(items) do | fruit, *produce |
  puts fruit
  puts produce.join(', ')
end

# Expected output:
# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

puts ""

gather(items) do | apples, corn, cabbage, wheat |
  puts "#{apples}, #{corn}, #{cabbage} and #{wheat}"
end

# Expected output:
# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!