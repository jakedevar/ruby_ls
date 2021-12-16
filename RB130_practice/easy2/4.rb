def count *args 
	# args.each_with_object([]) {|ele, arr| arr << nil if yield(ele)}.size
	# args.inject(0) {|sum, e| sum += 1 if yield(e) ; sum}
	args.inject(0) { |mem, var| mem += (yield(var) ? 1 : 0); mem }
end

p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3