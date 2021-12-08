require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class Yes < MiniTest::Test
  def setup
    @list = []
  end

  def test_arr
    assert_empty(@list)
  end
end