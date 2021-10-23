# exercise_7.rb

require 'date'

# def friday_13th(year)
#   Date.new(year).step(Date.new(year,-1,-1)).select do |d|
#     d if d.friday? && d.mday == 13
#   end.length
# end
# this one I felt like i was sort of driving by the feel not the knowledge so I was hevily relying on prior knowledge and documentation to make this one work.
# honastly when it worked out i was pretty relieved because I was flying by the seat of my pants so I am glad my assumptions worked out the way they did.
# looking at the ls solutoin I am glad I stumbled onto this one by accident
# it would not have been my idea to use select but I have noted that I need to use it more often
# good job though!!!!
def friday_13th(year)
  unlucky_count = 0
  thirteenth = Date.civil(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
