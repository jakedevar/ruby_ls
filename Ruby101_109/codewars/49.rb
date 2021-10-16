=begin
# ------------------- Problem ---------------------
break the integer up into single digits. 
then take them to the power of the number given which increases by one every time you take the next number to 
the new power

# ------------------- Examples --------------------
lol no bro

# ------------------- Data ------------------------
an array

# ------------------- Algorithm -------------------
take the number and to_s chars it
then map by to s and then ** with the counter which is the second arg and up it every time at end of iteration
then return true if n times power == the sum of the maped arr

# ------------------- Code -----------------------

=end

def dig_pow(n, p)
  count = p - 1
  powered = n.to_s.chars.map { |i| i.to_i }.map { |n| count += 1 ; n**count }
  count = 0
  i = 0
  loop do 
    break if i >= powered.sum
    count += 1
    i = n * count
  end
  return -1 if powered.sum != i
  return powered.sum / n 
end

p dig_pow(89, 1) #== 1

p dig_pow(92, 1) #== -1

p dig_pow(46288, 3) #== 51

p dig_pow(695, 2) #== 2