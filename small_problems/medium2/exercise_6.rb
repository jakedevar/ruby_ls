#exercise_6.rb

def triangle?(one ,two, three)
  arr = [one, two, three].sort
  arr.each do |int|
    if int == 0
      return :invalid
    elsif arr.inject(:+) != 180
      return :invalid
    end
  end
end

def triangle(one, two, three)
  if triangle?(one, two, three) && 

p triangle(60, 70, 50) #== :acute
p triangle(30, 90, 60) #== :right
p triangle(120, 50, 10) #== :obtuse
p triangle(0, 90, 90) #== :invalid
p triangle(50, 50, 50) #== :invalid