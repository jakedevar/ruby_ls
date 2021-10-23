def multiply(one, two)
  one * two
end

def square(int)
  multiply(int, int)
end

p square(5) == 25
p square(-8) == 64
