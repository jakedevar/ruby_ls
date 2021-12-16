require 'minitest/autorun'

class Testing < MiniTest::Test
	def test_
		value = 'XYZ'
		assert_equal('xyz', value.downcase)
	end
end