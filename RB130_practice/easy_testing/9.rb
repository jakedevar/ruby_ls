# Write a test that will fail if list and the return value of list.process are different objects.

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class Yes < MiniTest::Test
  def test_
    list = No.new
    assert_same list.process, list 
  end
end

class No
  def process
    self
  end
end