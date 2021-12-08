require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class Yes < MiniTest::Test 
  def test_nil
    assert_nil(nil)
  end
end