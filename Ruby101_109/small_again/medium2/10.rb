=begin
------------------- Problem ---------------------
lol just won because this problem is easy!!!
to easy....
lol nah jk here the analysis
compute the difference between the sum of the integers between one and the given number squared
and all of the elements squared within that same range summed

------------------- Examples --------------------
given not doing edge cases cause fuck you

------------------- Data ------------------------
arrays baby!!!!

------------------- Algorithm -------------------
var = (1..int).to_a
var.sum**2 - var.map {|ele| ele**2}.sum

------------------- Code ------------------------
=end

def sum_square_difference(int)
  arr = (1..int).to_a
  (arr.sum**2) - (arr.map { |n| n**2 }.sum)
end

p sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
