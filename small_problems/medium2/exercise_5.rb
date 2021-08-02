#exercise_5.rb

def valid_triangle?(one, two, three)
  arr = [one, two, three].sort {|a, b| b <=> a}
  if arr.one?(0)
    return false 
  elsif ((arr[1] + arr[2]) < arr[0])
    return false
  else 
    return true 
  end
end

def triangle(one, two, three)
  arr = [one, two, three].sort {|a, b| b <=> a}
  if valid_triangle?(one, two, three) && (arr[0] == arr[1] && arr[1] == arr[2])
    :equilateral
  elsif valid_triangle?(one, two, three) && (arr[0] + arr[1]) == (arr[2] * 4)
    :isosceles
  elsif valid_triangle?(one, two, three) && (arr[0] > arr[1] && arr[1] > arr[2])
    :scalene
  else 
    :invalid
  end
end 


p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid