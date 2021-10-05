=begin
# ------------------- Problem ---------------------
input an array 
ouput an array
reverse an array without using the reverse method. also make this a mutating method 
and do one thats not mutating Idgaf

# ------------------- Examples --------------------
lol bro here 

# ------------------- Data ------------------------
using an array 

# ------------------- Algorithm -------------------


# ------------------- Code -----------------------

=end

def reverse(arr)
  front = 0
  back = arr.size - 1
  res = []
  loop do 
    break if front == arr.size 
    res << arr[back]
    arr[front] = res[front]
    front += 1
    back -= 1
  end
  arr
end


a = [1, 2, 4, 5, 6, 7, 8, 9, 10]

p reverse(a) #== a.reverse

p reverse([]) == []

p reverse([1]) == [1]
