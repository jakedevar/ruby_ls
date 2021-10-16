=begin
------------------- Problem ---------------------
given a string input 
return a hash with the indexes of each letter (in which the keys are symbols of the letter)
are placed into an array in the value

------------------- Examples --------------------
givem

------------------- Data ------------------------
using an array and hash

------------------- Algorithm -------------------
init a hash new ([])
i am going to chars the string 
then each with index the string
hash[chr.to_sym] += i
return hash
------------------- Code ------------------------
=end

def map_letters str
  hash = Hash.new([])
  str.chars.each_with_index {|chr, i| hash[chr.to_sym] += [i]}
  hash
end


p map_letters("froggy") == { :f => [0], :r=>[1], :o=>[2], :g=>[3, 4], :y=>[5] }
p map_letters("dodo") == { :d=>[0, 2], :o=>[1, 3] }
p map_letters("grapes") == { :g=>[0], :r=>[1], :a=>[2], :p=>[3], :e=>[4], :s=>[5] }
