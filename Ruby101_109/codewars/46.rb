=begin
# ------------------- Problem ---------------------
return the digital root of a number
meaning that you take each single digit and sum them
then do it again if the number is not less than 10
  return the number that is less than 10

# ------------------- Examples --------------------
it looks like no negative numbers are used
zero is not used
no special characters or strings

# ------------------- Data ------------------------
I am going to try using recursion on this bad mother fucker
wish me luck!!!! love ya bud your doing great!

# ------------------- Algorithm -------------------
def the method
return the argurment if the number is less than 10
recursion with intdigitssum

def digital root int
  return int if int < 10
  digital root(int.digits.sum)
end

# ------------------- Storm -----------------------

=end

# def digital_root(int)
#   return int if int < 10
#   digital_root(int.digits.sum)
# end
# HOLY FUCKING SHIT I DID IT MAN I FUCKING DID IT ON THE FIRST GOD DMAN TRY I DID FUCKING RECUSION THAT MAGIC PEICE OF
# FUCKING SHIT I LVOE YOU MAN HELL FUCKING YA!!!!!!!!! WOOOOOOOOOOOOOOOOOOOOOOOHW

# one line refactoring for a simpler and even cleaner solution

def digital_root(int)
  int < 10 ? int : digital_root(int.digits.sum)
end

p digital_root(16) == 7
p digital_root(456) == 6
