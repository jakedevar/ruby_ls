=begin
# ------------------- Problem ---------------------
find the index of the fibonacci number with the length specified with the target number

# ------------------- Examples --------------------


# ------------------- Data ------------------------
a loop for this one works i think 

# ------------------- Algorithm -------------------
set counter to zero
set fib1 = 1
set fib2 = 2
loop it 
fib3 = fib1 + fib2
fib1 = fib 2
fib2 = fib3
# ------------------- Code -----------------------
=end

def find_fibonacci_index_by_length(targ)
  fib1 = 1
  fib2 = 1
  fib3 = 0
  counter = 2
  until fib3.to_s.size == targ
    fib3 = fib1 + fib2
    fib1 = fib2
    fib2 = fib3
    counter += 1
  end
  counter
end

p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12          #1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847