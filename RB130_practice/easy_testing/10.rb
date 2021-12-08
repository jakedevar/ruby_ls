require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class No < MiniTest::Test
  def test_
    list = ['xyz', 'no']
    refute_includes list, 'yes'
  end
end