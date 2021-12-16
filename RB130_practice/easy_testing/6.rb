require 'minitest/autorun'

class Testing < MiniTest::Test 
	def test_
		assert_raises(NoExperienceError) {Hire.new.hire} 
	end
end

class Hire 
	def hire 
raise NoExperienceError
	end
	end

NoExperienceError = Class.new(StandardError) 