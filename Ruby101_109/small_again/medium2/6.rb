=begin
------------------- Problem ---------------------
do the same thing as last problem but this time do it for acute right and obtuse angles

    right One angle of the triangle is a right angle (90 degrees)
    acute All 3 angles of the triangle are less than 90 degrees
    obtuse One angle is greater than 90 degrees.
To be a valid triangle, the sum of the angles must be exactly 180 degrees,
and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid

------------------- Examples --------------------
given

------------------- Data ------------------------
and array and case statments

------------------- Algorithm -------------------
init array with one, two, three

------------------- Code ------------------------
=end

def triangle(one, two, three)
  arr = [one, two, three]
  if arr.sum != 180 || arr.min <= 0 then :invalid
  elsif arr.one? { |x| x == 90 } then :right
  elsif arr.one? { |x| x > 90 } then :obtuse
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
