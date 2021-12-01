def reduce(array, default=0)
	accumulator = default 
	counter = 0

	while counter < array.size 
		accumulator = yield(accumulator, array[counter])
		counter += 1
	end
	accumulator
end

# start equals thingy 
# add num to start 
# do that with the block 
# start == start, start = start



array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass

