# exercise_7.rb

arr = ["potatoes", "beans", "greens", "tomatoes", "younameit"]

arr.each_with_index { |val, idx| puts "#{idx + 1}. #{val}" }
