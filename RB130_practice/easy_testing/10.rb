require 'minitest/autorun'

class Nist 
	def process 
		self 
	end 
end 

class NistTest < MiniTest::Test
	def test_
	list = Nist.new 
	assert_same list, list.process
end
end 

