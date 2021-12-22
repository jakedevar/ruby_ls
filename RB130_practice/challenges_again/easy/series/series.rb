class Series 
	attr_reader :number 

	def initialize str 
		@number = str.chars.map(&:to_i)
	end

	def slices stp
		raise ArgumentError if stp > number.size
		number.each_with_object([]).with_index do |(e, arr), ind|
			return arr if ind + stp > number.size
			arr << number[ind..stp+ind- 1] if stp != 1 
			arr << [e] if stp == 1
		end
	end
end