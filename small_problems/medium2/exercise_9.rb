#exercise_9.rb

def bubble_sort!(arr)
  first = 0
  last = 1

  arr.size.times do 
    if arr[first] <= arr[last]
      first += 1
      last += 1
    elsif arr[first] >= arr[last]
      holder = arr[first]
      arr[first] = arr[last]
      arr[last] = holder
      first += 1
      last += 1
    end
  end
  arr
end

#array = [5, 3]
# p bubble_sort!(array)
# array == [3, 5]

 array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
# array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)