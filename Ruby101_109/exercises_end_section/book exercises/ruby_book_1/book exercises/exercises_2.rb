# exercises_2.rb

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.select do |x|
  if x > 5
    puts x
  end
end

=begin
#LS solution
arr.each do |number|
  if number > 5
    puts number
  end
=end
