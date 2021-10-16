#exercise_4.rb

# def sequence(int)
#   arr = []
#   for i in (1..int)
#     arr << i
#   end
#   arr
# end

#Dat LS solution doe 
# def sequence(int)
#   (1..int).to_a
# end
#further ext

def sequence(int)
  int < 0 ? (int..-1).to_a : (1..int).to_a 
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-5) == [-5, -4, -3, -2, -1]