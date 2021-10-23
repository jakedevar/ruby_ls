def get_grade(one, two, three)
  average = [one, two, three].sum / 3
  case average
  when 90..100 then 'A'
  when 60..69
    'D'
  end
end

p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"
