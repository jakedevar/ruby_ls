#exercise_13.rb

arr = ['snow', 'winter', 'ice', 'slippery', 
  'salted roads', 'white trees']

#arr.delete_if { |element| element.to_s.start_with?('s') }
#arr.delete_if { |element| element.to_s.start_with?('w')}

#LS solution
arr.delete_if { |word| word.start_with?("s", "w")}
p arr