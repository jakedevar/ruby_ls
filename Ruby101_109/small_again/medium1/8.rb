=begin
------------------- Problem ---------------------
create a method that computs the nth number of the fibonnaci sequence
using recurssion

------------------- Examples --------------------
given

------------------- Data ------------------------
recursion like the problem says

------------------- Algorithm -------------------

------------------- Code ------------------------
=end

def fibonacci(int)
  return 1 if int <= 2
  fibonacci(int - 1) + fibonacci(int - 2)
end

# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
p fibonacci(1000) #== 6765
