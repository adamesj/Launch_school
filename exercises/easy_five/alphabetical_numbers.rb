# Write a method that takes an array of integers between 0 and 19,
# returns an array of those integers sorted based on English words for each number.


def alphabetic_number_sort(array)
  words = []
  sorted_array = []

  numbers = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
              6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven",
              12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen",
              17 => "seventeen", 18 => "eighteen", 19 => "nineteen" }

  array.each do |num|
    words << numbers[num]
  end

  words.sort.each do |word|
    sorted_array << numbers.key(word)
  end

  sorted_array
end

p alphabetic_number_sort((0..19).to_a)