#exercise_9.rb

def fibonacci(nth)
  first = 1
  second = 1
  counter = 1
  until counter = nth
    fibonacci = first + second
    first = second
    second = fibonacci
    counter += 1
  end
end

fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501