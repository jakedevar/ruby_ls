#exercise_3.rb

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(int, n)
  all_digits = int.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(int)
counter = 0
loop do
  int = rotate_rightmost_digits(int, counter)
  counter += 1
  break if counter >= int.to_s.size
  end
  int
end
#I hope i am not actually super bad at coding... I dont think I am but this is the second medium one after ex7 that I gave up on. granted they are exercises
#and i seem to be able to solve most of them. Still  Iwonder how I can best achieve mastery. probably with repetition and reading all the docs

# def max_rotation(number)
#   number_digits = number.to_s.size
#   number_digits.downto(2) do |n|
#     number = rotate_rightmost_digits(number, n)
#   end
#   number
# end
#wiat lololololoololol i just modified my code after seeing the oslutoin
#maybe i dont completly suck at this hahahaha I was wondering how I was supposed to store my results when i do the mehtod calls. I was thinking that 
#the assignment would just be mutating the int in it of it self. however I didnt realize that I all i had to do was change the int to = method
#now it works perfectly. I had the right idea I just didnt konw how to execute it!

p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35) #== 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) #== 7_321_609_845