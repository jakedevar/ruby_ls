=begin
# ------------------- Problem ---------------------
double number is an EVEN number 

if the number is not a double number then double that number
if the number is a double number then return the number 

# ------------------- Examples --------------------


# ------------------- Data ------------------------
array of digits

# ------------------- Algorithm -------------------
def method int
  digits = int.digts
  return int * 2 if number.digits size is odd?
  init an array = [[digits[0..digits.size / 2 - 1]], [digits[digits[]]]]
  check if ternary operator digits 0 is equal to digits 1 if so then int : int * 2
end

# ------------------- Code -----------------------

=end

def twice int
  digits = int.digits
  return int * 2 if digits.size.odd?
  check_if_double = [digits[0..((digits.size / 2) - 1)], digits[(digits.size / 2)..-1]]
  check_if_double[0] == check_if_double[1] ? int : int * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10