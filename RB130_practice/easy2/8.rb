# def max_by(arr)
# 	res = -10000000
# 	store = nil 
# 	arr.each {|n| store = n if res < yield(n); res = yield(n) if res < yield(n)}
# 	store
# end

def max_by arr 
	return nil if arr.empty?
	max_ele = arr.first 
	mav_value = yield(arr.first)

	arr[1..-1].each do |ele|
		yielded_val = yield(ele)
		max_ele = ele if yielded_val > mav_value
		mav_value = yielded_val if yielded_val > mav_value
	end

	max_ele
end


p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil