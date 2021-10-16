# def triangle(int)
#   counter = 0
#   until counter == int
#     counter += 1
#     puts (' ' * (int - counter)) + ('*' * counter)
#   end
# end

#So first of all my solution was correct...HOWEVER I sacrificed readability for speed and compactness which is not good. so below is the LS solution that I
# retyped to get it to be more readable 
# def triangle(int)
#   spaces = int - 1
#   stars = 1
#   int.times do |n|
#     puts (' ' * spaces) + ('*' * stars)
#     spaces -= 1
#     stars += 1
#   end
# end
puts "TYPE UP OR DOWN FOR WHICH WAY THE TRANGLE SHOULD POINT"
INPUT = gets.chomp.downcase
def superior_choice(int)
counter = 0
  if INPUT == 'UP'.downcase
  until counter == int
    counter += 1
    puts (' ' * (int - counter)) + ('*' * counter)
    end
elsif INPUT == 'DOWN'
  counter = 0
  until counter = int 
    counter += 1
    puts (' ' * counter) + ('*' (int - counter))
  end
end
end





superior_choice(25)
#triangle(194)