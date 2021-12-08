require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!


class Yes < MiniTest::Test
	def test_downcase
    value = 'XYZ'
    assert_equal value.downcase, 'xyz'
  end
end