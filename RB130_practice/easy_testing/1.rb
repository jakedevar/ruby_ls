require 'minitest/autorun'
# require 'minitest/reporters'
# MiniTest::Reporters.use!

class YesTest < MiniTest::Test
	

	def test_odd
		assert 2.odd?, 'its not an odd value'
	end
end

