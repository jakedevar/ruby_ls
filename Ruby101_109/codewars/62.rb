=begin
# ------------------- Problem ---------------------
return the missing letter from the array of letters
input arr 
output a str

# ------------------- Examples --------------------
the collection will all always be only upper or lower case 

# ------------------- Data ------------------------
an array just working with the one we got 

# ------------------- Algorithm -------------------
iterate through the arr with index
if chr.next != arr index
  then return char 

# ------------------- Code -----------------------

=end

# def missing(arr)
#   arr.each_with_index { |chr, i| return chr.next if chr.next != arr[i + 1]}
# end
# loved my solution but this one is the best one for sure 

def missing(arr)
  ((arr.first..arr.last).to_a - arr).first
end


p missing(["a","b","c","d","f"]) #== "e"
p missing(["O","Q","R","S"]) == "P"
