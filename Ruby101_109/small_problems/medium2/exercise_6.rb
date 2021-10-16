#exercise_6.rb
# this was how I originally tried doing it but i remembered that the other exercise had the case statment so I treid giving it a shot
# instead of having a method that checks weather or not it is valid I just check it now in the case statement 
# def triangle?(one ,two, three)
#   arr = [one, two, three].sort
#   arr.each do |int|
#     if int == 0
#       return :invalid
#     elsif arr.inject(:+) != 180
#       return :invalid
#     end
#   end
# end

def triangle(one, two, three)
arr = [one, two, three]
  case
  when arr.reduce(:+) != 180, arr.include?(0) #(one == 0 || two == 0 || three == 0) || arr.sum != 180 this is how i did it initially the new is LS
    :invalid
  when arr.include?(90) #one == 90 || two == 90 || three == 90
    :right
  when arr.all? { |angle| angle < 90} #one > 90 || two > 90 || three > 90
    :acute
  # when one < 90 && two < 90 && three < 90
  else
    :obtuse
  end
end

p triangle(60, 70, 50) #== :acute
p triangle(30, 90, 60) #== :right
p triangle(120, 50, 10) #== :obtuse
p triangle(0, 90, 90) #== :invalid
p triangle(50, 50, 50) #== :invalid