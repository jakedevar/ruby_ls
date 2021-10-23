=begin
# ------------------- Problem ---------------------
find the multiples of 3 or 5 between 1 and the target number
sum all of those multiples together

# ------------------- Examples --------------------
no negatives are used it seems
0 is not given it seems

# ------------------- Data ------------------------
I will use a range for this and select from the range

# ------------------- Algorithm -------------------
def method int
  call range one to int
  select on range with n % 3 or 5 equal zero
on select call sum
end

# ------------------- Storm -----------------------

=end

def solution(int)
  (1...int).select do |n|
    n % 5 == 0 || n % 3 == 0
  end.sum
end

p solution(10) #== 23

p solution(20) == 78

p solution(200) == 9168
