=begin
# ------------------- Problem ---------------------
input: a string and a chunk size number
output : a string 
take the each slice of the string with the target number and if the sum of the cubes of its digits is even reverse and put in string 
otherwise just rotate the number  

# ------------------- Examples --------------------
if a string is empty or it is impossible to chunk then return an empty string 

# ------------------- Data ------------------------
a string an an array

# ------------------- Algorithm -------------------
return str if string == '' or targ = 0 || targ > size / 2
init an empty string 
var = string to i digits reverse each sclice target number  to a 
var each do if blah blah blah += to string then return string 

helper method:::
take the arr and iterate over it mapping the stuff taking the empty string and chunk arr as arguments 
# ------------------- Code -----------------------

=end
def revrot(string, chunk)
  str = ''
  return '' if string == '' || chunk = 0 || chunk > string.size / 2
  chunk_arr = string.to_i.digits.reverse.each_slice(chunk).to_a
  helper str, chunk_arr
end

def helper str, chunk_arr
  chunk_arr.map do |sub_arr|
    sub_arr.map do |int|
      int**3
    end
    str << sub_arr.reverse.join if sub_arr.sum.even?
    str << (sub_arr << rotate(sub_arr)).join
  end 
  str
end

def rotate arr
  arr.shift
end


# p revrot("1234", 0) == ""

# p revrot("", 0) == ""

# p revrot("1234", 5) == ""


p revrot("733049910872815764", 5) #== "330479108928157"

# p revrot("123456987654", 6) == "234561876549"

# p revrot("123456987653", 6) == "234561356789"

# p revrot("66443875", 4) == "44668753"

# p revrot("66443875", 8) == "64438756"

# p revrot("664438769", 8) == "67834466"

# p revrot("123456779", 8) == "23456771"

# p revrot("", 8) == ""

# p revrot("123456779", 0) == ""

# p revrot("563000655734469485", 4) == "0365065073456944"