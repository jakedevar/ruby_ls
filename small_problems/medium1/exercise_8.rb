#exercise_8.rb

def sum(n)
  return 1 if n == 1
  p n + sum(n - 1)
end

p sum(3)
  


#p fibonacci(1)# == 1
# fibonacci(2) == 1
# fibonacci(3) == 2
# fibonacci(4) == 3
# fibonacci(5) == 5
# fibonacci(12) == 144
# fibonacci(20) == 6765