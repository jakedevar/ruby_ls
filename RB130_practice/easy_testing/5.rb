require 'minitest/autorun'

class Testing < MiniTest::Test
	def test_
		value = ['xyz']
		assert_includes value, 'xyz'
	end
	end