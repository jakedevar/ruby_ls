# recursion_exercise.rb
# Write a method that counts down to zero using recursion.

def count_down(number)
  puts number
  unless number == 0
    count_down(number - 1)
  end
end

count_down(10)
