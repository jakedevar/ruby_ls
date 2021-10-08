=begin
------------------- Problem ---------------------
create a method in which given three integers determine what kind of triangle it will be
equilateral means that all sides are equal
isosceles mean that two are same and one is half
scalene mean they are all not equal 
invalid 

------------------- Examples --------------------
given

------------------- Data ------------------------
using case or if else for this 

------------------- Algorithm -------------------
so heres the problem, case statments are something I have not completly mastered yet. so just for a challenge i am going to use them
init array to the args.
do a case analysis on equilateral just to make sure i have it 

------------------- Code ------------------------
=end

def triangle one, two, three
  arr = [one, two, three].sort
  case
  when one == two && two == three && three == one then :equilateral
  when arr.min == (arr.max.to_f / 2) then :isosceles
  when (one != two && two != three && three != one) && arr.min + arr[1] > arr[-1] then :scalene
  else :invalid
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid