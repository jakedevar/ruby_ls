require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class TestContain < MiniTest::Test
  def setup 
    @list = ['xyz']
  end

  def test_contain
    assert_includes @list, 'xyz'
  end
end