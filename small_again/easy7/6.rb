=begin
# ------------------- Problem ---------------------
make every other letter upcase and every after that downcase

# ------------------- Examples --------------------

edge case would be empty string or nil
  already special chars in there along with nymber which you must ignore both
# ------------------- Data ------------------------
arrays babay

# ------------------- Algorithm -------------------
initate a res array
init boolean to true
and then i am going to call chars on string, then i am going to call each on chars
then set the param
then set an if else statment
in which if chr regex ^a-z i 
res << chr
else
  boolean ? res << chr.upcase : res << chr.downcase 

end
end
res.join

# ------------------- Code -----------------------
=end

def staggered_case str
  res = []
  bool = true
  str.chars.each do |chr|
    if chr =~ /[^a-z]/i
      res << chr
    else
      bool ? res << chr.upcase : res << chr.downcase
      bool = !bool
    end
  end
  res.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'