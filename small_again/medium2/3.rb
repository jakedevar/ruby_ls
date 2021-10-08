=begin
------------------- Problem ---------------------
return the percentage of letters in the string 

------------------- Examples --------------------
the string will always have atleast one character

------------------- Data ------------------------
hash

------------------- Algorithm -------------------
go through with chars just like in easy
create hash new (0)
char the string
each do on the string 
if statments on each to up values

then call values.to_f / str.size and multiply by 100?
------------------- Code ------------------------
=end

# def letter_percentages str
#   hash = {:lowercase=>0, :uppercase=>0, :neither=>0}
#   str.chars.each do |chr|
#     if /[a-z]/.match(chr)
#       hash[:lowercase] += 1
#     elsif /[a-z]/i.match(chr)
#       hash[:uppercase] += 1
#     else
#       hash[:neither] += 1
#     end
#   end
#   hash.keys.each {|key| hash[key] = (hash[key] / str.size.to_f) * 100}
#   hash
# end

def letter_percentages str
  hash = {:lowercase=>0, :uppercase=>0, :neither=>0}
    if /[a-z]/.match(chr)
      hash[:lowercase] += 1
    elsif /[a-z]/i.match(chr)
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  hash.keys.each {|key| hash[key] = (hash[key] / str.size.to_f) * 100}
  hash
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }