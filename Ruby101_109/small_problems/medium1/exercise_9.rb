# #exercise_9.rb

# def fibonacci(nth)
#   first = 1
#   second = 1
#   counter = 2

#   loop do
#     break if counter == nth
#     fibonacci = first + second
#     first = second
#     second = fibonacci
#     counter += 1
#   end
#   second
# end

# love this LS solution

def fibonacci(nth)
  first = 1
  last = 1
  3.upto(nth) do
    first, last = [last, first + last]
  end
  last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001)  #=> 4202692702.....8285979669707537501 #idk what this answer is supposed to mean however the solution should be correct!
# borrowed this answer from the easy 6 ex 3 solution.
