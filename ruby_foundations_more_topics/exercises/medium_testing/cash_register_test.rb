require 'minitest/autorun'
# require 'minitest/reporters'
# Minitest::Reporters.use!
# require 'simplecov'
require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  def setup
    @cash_register = CashRegister.new(1000)
    @transaction = Transaction.new(10)
  end

  def test_accept_money
    @transaction.amount_paid = 20
    previous_amount = @cash_register.total_money
    @cash_register.accept_money(@transaction)
    current_amount = @cash_register.total_money

    assert_equal(previous_amount + 20, current_amount)
  end

  def test_change
    @transaction.amount_paid = 20
    transaction_amount = @cash_register.change(@transaction)
    assert_equal(transaction_amount, 10)
  end

  def test_give_receipt
    item_cost = 35
    register = CashRegister.new(1000)
    transaction = Transaction.new(item_cost)
    assert_output("You've paid $#{item_cost}.\n") do
      register.give_receipt(transaction)
    end
  end

  def test_prompt_for_payment
    transaction = Transaction.new(30)
    input = StringIO.new('30')
    output = StringIO.new
    transaction.prompt_for_payment(input: input, output: output)
    assert_equal 30, transaction.amount_paid
  end
end
