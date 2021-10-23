# exercise_5.rb
LIMIT = 15

def fib(first_num, second_num)
  while first_num + second_num < LIMIT
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# Limit cannot be called inside a method we could make it a
# constant and it would reach it or we could just put the limt
# inside the method so you could call it

=begin
LS solution below

Ben defines limit before he calls fib. But limit is
not visible in the scope of fib because fib is a method
 and does not have access to any local variables outside
 of its scope.

You can make limit an additional argument to the
definition of the fib method and pass it in when you
call fib.

=end
