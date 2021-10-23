# exercise_6.rb

# def merge(arrA, arrB)
#   new_arr = []
#   arrA.each { |ele| new_arr << ele}
#   arrB.each { |ele| new_arr << ele}
#   new_arr.uniq
# end
# this one was a total face slap XD the ls solution totally blew me out of the fing water had no idea this was possible. I need to go through and just
# read all the documentation for methods so they are in the back of my mind somewhere.

def merge(arr1, arr2)
  arr1 | arr2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
