require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class Yes < MiniTest::Test
	

	def test_odd
		assert 1.odd?
	end
end
