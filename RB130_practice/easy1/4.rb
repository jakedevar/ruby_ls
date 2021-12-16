# def divisors int 
# 	(1..int/2).each_with_object([]) {|ele, arr| arr << ele if int % ele == 0 } + [int]
# end

# def divisors int 
# 	(1..int).select {|ele| int % ele == 0}
# end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute