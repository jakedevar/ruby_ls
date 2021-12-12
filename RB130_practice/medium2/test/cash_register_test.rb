require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative '../lib/cash_register'
require_relative '../lib/transaction'

class CashRegisterTest < MiniTest::Test
  attr_reader :cash, :trans

  def setup
    @cash = CashRegister.new(1000)
    @trans = Transaction.new(1000)
  end

  def test_total
    assert_equal @cash.total_money, 1000
  end

  def test_accept_money
    self.trans.amount_paid = 100
    cash.accept_money(trans)
    assert_equal 1100, cash.total_money
  end

  def test_change
    self.trans.amount_paid = 1012
    assert_equal 12, cash.change(trans)
  end

  def test_give_reciept
    
    assert_output("You've paid $1000.\n") {cash.give_receipt(trans)}
  end
end