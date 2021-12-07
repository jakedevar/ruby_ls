# def drop_while arr 
# 	arr.each_with_object([]) {|ele, arr| arr << ele if !yield(ele)}
# end

def drop_while arr 
	counter = 0
	while counter < arr.size && yield(arr[counter]) 
		counter += 1
	end
	arr[counter..-1] 
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []