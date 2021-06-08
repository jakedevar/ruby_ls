#exercise_7.rb
=begin
numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select { |x| x if (x % 3) == 0}

p divisible_by_three
=end

#unecessary if statement 
numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select { |x| (x % 3) == 0}

p divisible_by_three