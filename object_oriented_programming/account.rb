class Account
  attr_reader :name, :balance

  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  def display_balance(pin_number)
    pin_number == pin ? "Balance: $#{balance}" : pin_error
  end

  def deposit(pin_number, amount)
    if pin_number == pin
      @balance += amount
      puts "Deposited #{amount}. New balance: #{balance}"
    else
      puts pin_error
    end
  end

  def withdraw(pin_number, amount)
    if pin_number == pin
      if @balance < amount
        puts "You do not have sufficient funds for this transaction."
      else
        @balance -= amount
        puts "Withdrew #{amount}. New balance: #{balance}"
      end
    else
      puts pin_error
    end
  end

  private

  def pin
    @pin = 1234
  end

  def pin_error
    "Access denied: incorrect PIN."
  end
end

class CheckingAccount < Account; end
class SavingsAccount < Account; end

checking_account = CheckingAccount.new("Checking", 150_000)
savings_acount = SavingsAccount.new("Savings", 200_000)
p checking_account
p savings_acount


# def set_radius=(radius)
#   @radius = radius
# end

# object.set_radius = 10



