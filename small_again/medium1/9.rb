=begin
------------------- Problem ---------------------
write a non recursive method that computes the nth fibonaci number

------------------- Examples --------------------
given

------------------- Data ------------------------
loops!

------------------- Algorithm -------------------
just do the loop method you already know how to do 

------------------- Code ------------------------
=end

# def fibonacci int
#   fib1 = 1
#   fib2 = 1
#   counter = 2
#   loop do 
#     fib3 = fib1 + fib2
#     fib1 = fib2
#     fib2 = fib3
#     counter += 1
#     return fib3 if counter == int
#   end
# end
# LS solution 

def fibonacci(int)
  first, last = [1, 1]
  3.upto(int) do 
    first, last = [last, first + last]
  end
  last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501