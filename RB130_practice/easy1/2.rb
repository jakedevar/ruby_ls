# def compute
# 	return yield if block_given?
# 	'Does not compute.'
# end

# Modify the compute method so it takes a single argument and
# yields that argument to the block. 
# Provide at least 3 examples of calling this new version of compute, including a no-block call.

def compute(argu = nil)
	return 'Does not compute.' unless block_given?
	yield(argu)
end

p compute(3) {|yes| 5 + yes } == 8
p compute('a') {|no| no + 'b' } == 'ab'
p compute == 'Does not compute.'