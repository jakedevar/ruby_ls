# exercise_9.rb

def bubble_sort!(arr)
  counter = 1
  swap = 0
  loop do
    if swap > 0
      loop do
        break if arr.size == counter
        if arr[counter - 1] < arr[counter]
          counter += 1
          swap += 1
        else
          holder = arr[counter - 1]
          arr[counter - 1] = arr[counter]
          arr[counter] = holder
          counter += 1
          swap = true
        end
      end
    end
  end
  arr
end

# LS solution
def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end

# array = [5, 3]
# p bubble_sort!(array)
# array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
# array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
