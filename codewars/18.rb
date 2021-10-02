=begin
# ------------------- Problem ---------------------
take a positive integer and multiply the two digits then do the same with the result untill a single number is reached 

# ------------------- Examples --------------------


# ------------------- Data ------------------------


# ------------------- Algorithm -------------------
digits break up then reduce and reasign arr to this and keep going untill array.length is 1 also do a counter

# ------------------- Storm -----------------------
=end

def persistence(int)
  counter = 0
  arr = int
  loop do 
    arr = arr.digits
    break if arr.length == 1
    arr = arr.inject(:*)
    counter += 1
  end
  counter
end


p persistence(39) == 3

p persistence(4) == 0

p persistence(25) == 2

p persistence(999) == 4