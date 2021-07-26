#exercise_3.rb

def negative(int)
  if int > 0
    int - (int *2)
  elsif int < 0 
    int 
  else
    0
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby