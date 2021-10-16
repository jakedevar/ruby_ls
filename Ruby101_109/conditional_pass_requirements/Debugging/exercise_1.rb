def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'

=begin
First I take a look a the exercise discription to understand what exactly the code is being required to output.
Then I run the code to determine the error that is preventing the code from working. Upon running the code the error seems to 
be that the counter is not being reduced and it is outputing 10 ten times before calling puts on 'LAUNCH'. I skim through the code top
to bottom to see what methods are in play and why the counter is not being decreased properly. 

I notice that there is a method definition decrease() with counter set as the parameter and reasigning the parameter to counter = counter - 1. 
The method decrease() is then being called inside the Integer#times do/end block with the local variable counte being passed in as the argument. Immediatly, it is
apparent that the reason this method is not working properly is due to method scope. Though the counter variable is indeed accessible
from within Interger#times the counter is being called within a defined method which alone does nothing to the value of counter.
Without the value of decrease() being captured there is no change in the value of counter.
In order to change the value of counter the value from decrease must be captured by reasigning counter to the return value of decrease(counter). 

In order to fix this problem I reasigned counter to the value that is returned by decrease(counter). 
The code now runs as expected. 
=end