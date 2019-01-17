# Consider the following broken code:

class Wallet
  include Comparable

  def initialize(amount)
    @amount = amount
  end

  def <=>(other_wallet)
    amount <=> other_wallet.amount
  end

  protected

  attr_reader :amount
end

bills_wallet = Wallet.new(500)
pennys_wallet = Wallet.new(465)
if bills_wallet > pennys_wallet
  puts 'Bill has more money than Penny'
elsif bills_wallet < pennys_wallet
  puts 'Penny has more money than Bill'
else
  puts 'Bill and Penny have the same amount of money.'
end

# Modify this code so it works. Do not make the amount in the wallet accessible to any method that isn't part of the Wallet class.
# Nobody should be able to look at the amount except another wallet.
# To do this, we use the Kernel#protected method.
# A protected method is similar to a private method,
# except that methods of the class can call the protected method of any other object of the same class.
