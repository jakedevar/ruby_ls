# exercise_7.rb

# def halvsies(arr)
#   new_arr1 = []
#   new_arr2 = []
#   last_arr = []
#   new_arr1 << (arr.size.even? ? arr[0..((arr.size / 2) - 1)] : arr[0..( (arr.size / 2))])
#   arr.size == (1 || 0) ? new_arr2 << [] : new_arr2 << arr[(-(arr.size / 2)..-1)]
#   last_arr << new_arr1[0] ; last_arr << new_arr2[0]
#   last_arr
# end
# and of course the LS solution is more elegant actually Good ol lewis isom comes out of the wood work and lays a dinger down by using parition which
# I was kicking myself for not remembering. However on the good side my solution is the first solution i have ever seen that usses nested ternary operators XD
# def halvsies(arr)
#   arr.partition { |ele| arr.index(ele) < (arr.size/2.0).round}
# end
# ls solution here lewis's solution up there and mine at tippy top
def halvsies(arr)
  middle = (arr.size / 2.0).ceil
  first_half = arr.slice(0, middle)
  second_half = arr.slice(middle, arr.size - middle)
  [first_half, second_half]
end
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
