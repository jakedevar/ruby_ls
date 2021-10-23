# exercise_8.rb

def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end
# i looked at the solution but I was so close lol
# if i had just tried to work out the thing with a sheet of paper
# i would have gotten it god dammit. I do understand recursion though!!!

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
