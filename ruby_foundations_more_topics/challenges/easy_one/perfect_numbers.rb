=begin
  A perfect number equals the sum of its positive divisors

  Example: 
  6 is a perfect number because its divisors are 1, 2, 3 and 6 = 1 + 2 + 3.

  Perfect: Sum of factors = number
  Abundant: Sum of factors > number
  Deficient: Sum of factors < number
=end

class PerfectNumber
  def self.classify(number)
    raise RuntimeError, 'error' if number < 0
    factors = (1...number).to_a.select {|factor| number % factor == 0}
    if factors.reduce(:+) < number
      'deficient'
    elsif factors.reduce(:+) > number
      'abundant'
    else
      'perfect'
    end
  end
end
