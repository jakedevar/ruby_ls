#exercise_14.rb

a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']

=begin
a1 = a

def string_split(arr)
  x = arr.map {|x| x.split}
  x.flatten
end

p string_split(a1)

=end

#LS solution
 
a = a.map { |pairs| pairs.split}
a = a.flatten
p a