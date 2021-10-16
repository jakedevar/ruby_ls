=begin
# ------------------- Problem ---------------------
find the only odd or even number in an array of ints 
input arr of ints 
out put int 

# ------------------- Examples --------------------


# ------------------- Data ------------------------
arr

# ------------------- Algorithm -------------------
iterate through the array by calling one? word even if true then return true 
then do it again on the next if flase for odd 

# ------------------- Code -----------------------

=end

def e_or_o(arr)
  if arr.one? {|i| i.even?}
    arr.each {|ele| return ele if ele.even?}
  else 
    arr.each {|ele| return ele if ele.odd?}
  end
end

p e_or_o([2, 4, 0, 100, 4, 11, 2602, 36]) #== 11 

p e_or_o([160, 3, 1719, 19, 11, 13, -21]) #== 160 