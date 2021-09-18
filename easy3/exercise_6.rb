# def xor?(one, two)
#   if (one == true && two == false) || (one == false && two == true)
#     true
#   else
#     false
#   end
# end

def xor?(one, two)
  !!((one && !two) || (!one && two))
end

p xor?(5.even?, 4.even?) #== true
p xor?(5.odd?, 4.odd?) #== true
p xor?(5.odd?, 4.even?) #== false
p xor?(5.even?, 4.odd?) #== false