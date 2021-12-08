# Write a minitest assertion that will fail if the class of value is not Numeric or one of Numeric's subclasses (e.g., Integer, Float, etc).

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class Yes < MiniTest::Test
  def test_class
    value = 1
    assert_kind_of(Numeric, value)
  end
end