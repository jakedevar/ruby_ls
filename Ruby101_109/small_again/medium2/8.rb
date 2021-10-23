=begin
------------------- Problem ---------------------
take the starting number and check if its a featured number
basically if its divisible by 7 evenly and its digits appear only once in the nuymber

------------------- Examples --------------------
not going to test for negatives and not going to account for zeros because no one asked

------------------- Data ------------------------
array of digits and a loop!

------------------- Algorithm -------------------
using a loop right off the bat
we are going to break if int.digits.uniq == int.digits && int % 7 == 0
int += 1

------------------- Code ------------------------
=end

def featured(int)
  loop do
    int += 1
    return int if (int.digits.uniq == int.digits && int % 7 == 0 && int.odd?) || int >= 9_999_999_999
  end
end

# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
