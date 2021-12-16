require 'minitest/autorun'

class Testing < MiniTest::Test 
	def test_ 
		value = 1
		assert_kind_of Numeric, value 
	end 
end 