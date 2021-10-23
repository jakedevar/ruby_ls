=begin
------------------- Problem ---------------------
find all the primes between and including the two target numbers!!
I SHALL NOT BE DEFEATED THIS TIME!!!!!!!!!

------------------- Examples --------------------
given

------------------- Data ------------------------
arrays obvi

------------------- Algorithm -------------------
going to init an array with the numbers and save in var
select from that var
calling Prime.prime?(int)

------------------- Code ------------------------
=end
require 'prime'
def find_primes(one, two)
  arr = (one..two).to_a
  arr.select { |int| Prime.prime?(int) }
end

p find_primes(3, 10) == [3, 5, 7]
p find_primes(11, 20) == [11, 13, 17, 19]
p find_primes(100, 101) == [101]
p find_primes(1,
              100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61,
                       67, 71, 73, 79, 83, 89, 97]
p find_primes(1, 2) == [2]
