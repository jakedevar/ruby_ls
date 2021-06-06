#exercise_9.rb

#p favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]].flatten


=begin
#this was LOL Wut??? in the comments section
favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

def my_flatten(array, flat_array=[])
  return flat_array if array.empty?
  if array[0].class != Array
    flat_array << array.shift
  else
    if array[0].empty?
      array.shift
    else
      flat_array << array[0].shift
    end
  end
  my_flatten(array, flat_array)
end

p my_flatten(favorites)
=end