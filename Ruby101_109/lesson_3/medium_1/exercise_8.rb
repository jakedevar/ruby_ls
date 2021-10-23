# exercise_8.rb
def rps(fist1, fist2)
  if fist1 == "rock"
    fist2 == "paper" ? "paper" : "rock"
  elsif fist1 == "paper"
    fist2 == "scissors" ? "scissors" : "paper"
  else
    fist2 == "rock" ? "rock" : "scissors"
  end
end

# My knowledge is a little shakey here and I think it will return
# not enough args because it only uses one arg in the last
# input it will run.
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
# i was wrong actually now thinking about it, it looks like
# it was just running as one arg before and then rock was the second arg?

=begin
The outermost call is evaluated by determining the
result of rps(rps("rock", "paper"), rps("rock", "scissors"))
versus rock. In turn that means we need to evaluate
the two separate results of rps("rock", "paper") and
rps("rock", "scissors") and later combine them by c
alling rps on their individual results. Those innermost
expressions will return "paper" and "rock", respectively.
 Calling rps on that input will return "paper". Which
 finally when evaluated against "rock" will return "paper".

=end
