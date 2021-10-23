=begin
------------------- Problem ---------------------
given an array of integers sort the odd ones in ascending order
leaving the even ones in their original positions

------------------- Examples --------------------
given

------------------- Data ------------------------

strings and arrays
------------------- Algorithm -------------------
i am going to join the array together
then gsub on the string that was created so that it only selects odd numbers and replace with a block

heres what i am going to do
  i am going to set a var to the sorted array then delete all of the even numbers
set a counter to -1
  then i am going to iterage through the original array with map
  if dig is odd?
    counter += 1
    sorted arr [counter]
  else
    dig

------------------- Code ------------------------
=end

def sort_odd(arr)
  arr_sort = arr.sort.delete_if { |dig| dig.even? }
  counter = -1
  arr.map do |dig|
    if dig.odd?
      counter += 1
      arr_sort[counter]
    else
      dig
    end
  end
end

p sort_odd([7, 1]) == [1, 7]
p sort_odd([5, 8, 6, 3, 4]) == [3, 8, 6, 5, 4]
p sort_odd([9, 8, 7, 6, 5, 4, 3, 2, 1, 0]) == [1, 8, 3, 6, 5, 4, 7, 2, 9, 0]
