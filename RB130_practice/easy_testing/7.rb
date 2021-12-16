require 'minitest/autorun'

class Testing < MiniTest::Test
	def test_
		value = Numeric.new
		assert_instance_of Numeric, value
	end
end