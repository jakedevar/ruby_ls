# exercise_1.rb

arr = [1, 3, 5, 6, 7]
number = 3
=begin x = arr.select { |number| number == 3}
#I thought it meant just see if you could get 3
puts x

arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end
=end

if arr.include?(number)
  puts "#{number} is indeed in the array."
end
