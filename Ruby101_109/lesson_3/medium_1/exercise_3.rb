<<<<<<< HEAD
def factors(number)
  divisor = number
  factors = []
  loop do
    if number != 0 && number > 0
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    else 
      puts 'please enter a number greater than 0'
    end
    break if divisor == 0
  end  
  factors 
end

p factors(9)

#bonus1 the purpose of number % divisor == 0 is 
#to check if the number/divisor is a factor of that number
#without it numbers would just keep pushing its a logic gate

#bonus 2 it is to make the function return the last line
#that was run so that it has the factors array on hand

#LS solution
=begin 

use this inside the loop it should look like this 
while divisor > 0 do
  factors << number / divisor if number % divsor == 0
  divisor -= 1
end

def factors(number)
  divisor = number
  factors = []
  loop do
    While divisor > 0 do
  factors << number / divisor if number % divsor == 0
  divisor -= 1
  end
  factors 
end

Bonus Answer 1
Allows you to determine if the result of the division is 
an integer number (no remainder).

Bonus Answer 2
This is what is the actual return value from the method. 
Recall that without an explicit return statement in the 
code, the return value of the method is the last statement 
executed. If we omitted this line, the code would execute,
 but the return value of the method would be nil.
=end 
