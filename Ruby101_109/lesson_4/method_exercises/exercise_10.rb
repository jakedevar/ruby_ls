#exercise_10.rb
[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
#the return value will be [1, 2, 3] but the output will be 2, 3

because the if statment will print the value and the else statment
will essentially keep the array as it is. 