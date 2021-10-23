# exercise_9.rb

# def get_grade(first, second, third)
#   mean = ((first + second + third) / 3)
# if mean > 90
#   "A"
# elsif mean < 90
#   "D"
# end
# end

# I was trying to figure out why the dang ol case statment was returning nil for me I figured it out with if statments but I am glad LS showed me how its doe

def get_grade(one, two, three)
  mean = (one + two + three) / 3
  case mean
  when 90..100 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  else "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
