#exercise_3.rb

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.select { |x| puts x if x.odd? }


=begin
arr.select do |x|
  if x.odd?
    puts x
  end
end
=end


=begin
#LS code
#I got carried away and did not read the part where it says make a new array
#oops

new_array = arr.select { |number| number % 2 != 0 }

or 

new_array = arr.select do |number|
  number % 2 != 0
end

=end