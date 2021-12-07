# def count(*args)
# 	args.each_with_object([]) {|ele, arr| arr << 1 if yield(ele)}.size
# end

# def count(*args, &block)
# 	args.inject(0) {|sum, e| sum += 1 if block.call(e); sum }
# end

def count(*args, &block)
	args.select {|ele| block.call(ele)}.size
end

p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3