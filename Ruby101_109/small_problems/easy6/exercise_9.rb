# #exercise_9.rb

def include?(arr, int)
  arr.each do |ele|
    return true if int == ele
  end
  false
end
# lol actually my solution was on of the two LS gave and it was labeled the hard way hahahaha
# it has become clear to me though that I need to read ALL of the documentation on arrays hashes etc. because I find that even if I just
# konw the method exists then I can come back to it in my subconscious and go looking for it. also some might stick and open up new ways for me to
# complete problems
# actually after checking my solution I realized it was wrong and I was reading the output of my function and the solution wrong
# i needed to evaluate false in order for the others to remain true

# def include?(arr, int)
#   !!arr.find_index(int)
# end

p include?([1, 2, 3, 4, 5], 3) == true
p include?([1, 2, 3, 4, 5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
