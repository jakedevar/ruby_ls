=begin
------------------- Problem ---------------------
write a method that shows an int representing the amount of friday the 13ths in a year
input is a integer representing a year
output is a integer representing the count of friday the 13th's

------------------- Examples --------------------
given

------------------- Data ------------------------
using the Date class in ruby

------------------- Algorithm -------------------


------------------- Code ------------------------
=end
require 'date'

def friday_13th(year)
  Date.new(year).step(Date.new(year,-1,-1)).map{|d| d.mday if d.friday?}.to_a.compact.select {|d| d == 13}.size
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2