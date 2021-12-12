require 'minitest/autorun'
# require 'minitest/reporters'
# MiniTest::Reporters.use!

require '../lib/transaction'

class TransactionTest < MiniTest::Test
  attr_reader :trans

  def setup 
    @trans = Transaction.new(1000)
  end

  def test_prompt_for_payment
    input = StringIO.new("1000")
    output = StringIO.new
    trans.prompt_for_payment(input: input, output: output)
    assert_equal 1000, trans.amount_paid
  end
end