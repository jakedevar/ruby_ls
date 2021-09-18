=begin
# ------------------- Problem ---------------------
Write a method that takes one argument, a positive integer, and returns a 
string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# ------------------- Examples --------------------
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# ------------------- Data ------------------------
inputing a number and returning a string 

# ------------------- Algorithm -------------------
initialize a variable to nil so access within block
initialize variable to true
num times do 
  if var 
    variable << '1'
  else 
    variable << '0'
flip bool var
# ------------------- Storm -----------------------



=end

def stringy(int)
  bool = true
  result = ''
  int.times do 
    if bool
      result << '1'
    else 
      result << '0'
    end
    bool = !bool
  end
  result
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'