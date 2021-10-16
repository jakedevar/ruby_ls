=begin
------------------- Problem ---------------------
BUBBLE SORT!!! let us begin my old foe for this time I shall not be bested

a bubble sort iterates through the array and swaps the elements mutating the arr if the first ele is greater then the second
if a swap occurs then begin back at the beggening 
stop itterating once it goes through the whole array and does not swap 
again must mutate the array

------------------- Examples --------------------
given

------------------- Data ------------------------
a loop!!!

------------------- Algorithm -------------------
def the method
return arr if counter == arr.size
  init a counter to 0
call the loop do method
arr[counter], arr[counter + 1] = arr[counter + 1], arr[counter] && counter = 0 if arr[counter] > arr[counter + 1]

end 

------------------- Code ------------------------
=end

def bubble_sort! arr
  counter = 0 
  loop do 
    return arr if counter == (arr.size - 1)
    if arr[counter] > arr[counter + 1]
      arr[counter], arr[counter + 1] = arr[counter + 1], arr[counter] 
      counter = 0
    else
      counter += 1
    end
  end
end

# array = [5, 3]
# p bubble_sort!(array)
# p array == [3, 5]

# array = [6, 2, 7, 1, 4]
# p bubble_sort!(array)
# p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)