#exercise_6.rb

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# I ran the code because i thought there was an error 
# and then i read the question. lol i wasent supposed to run it 
# even without running it and knowing the answer was 34
# i still looked at the code and could see that 
# += does not mutate the caller in a method so 
# answer would remain the same even if you ran the function
# p answer is just calling the var in the top without the function
