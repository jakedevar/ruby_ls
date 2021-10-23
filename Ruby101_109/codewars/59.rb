=begin
# ------------------- Problem ---------------------
return 1 if there is a stright triple of one number in the first int and a stright double of the same num in the second int

# ------------------- Examples --------------------
0?
nil?
im assuming no also no strings

# ------------------- Data ------------------------
im using a hash for this to tally stuff then use that key to retrun 1 if hash2 also has the key as two

# ------------------- Algorithm -------------------
def triple double
  hash1 = int.digits.tally
  hash2 = int2.digits.tally
  hash1.keys.each doseph if v == 3 and hash2[k] == 2 return 1

# ------------------- Code -----------------------

=end

def triple_double(int1, int2)
  hash1 = int1.digits.tally
  hash2 = int2.digits.tally
  hash1.each do |k, v|
    return 1 if v == 3 && hash2[k] == 2
  end
  0
end
# works for ruby 3.0 but not 2.5 :P

# def triple_double int1, int2
#   digi1 = int1.digits
#   digi2 = int2.digits
#   digi1.each do |i|
#     return 1 if digi1.count(i) == 3 && digi2.count(i) == 2
#   end
#   0
# end

# broken kata, both work but one test fails which i test here and is not a random test that works on my machine but not that one i guess

p triple_double(1112, 122) #== 0

p triple_double(666789, 12345667) == 1
