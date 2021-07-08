#exercise_5.rb
def multiply(x, y)
  x * y
end

def square(x)
  multiply(x, x)
end

def power_of(base, power)
  base ** multiply(power, 1)
end

p power_of(5,5) 
p power_of(-8, 5) 