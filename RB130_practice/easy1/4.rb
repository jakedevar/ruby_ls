=begin
==========================
         Problem
--------------------------
Write a method that returns a list of all of the divisors of the positive integer passed in as an argument. 
The return value can be in any sequence you wish.
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: return an array 
-  Inputs:
-  Output:
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- 
--------------------------
**Implicit Requirements:**
--------------------------

--------------------------
Examples/Test Cases/Edge's
--------------------------

-  Visual Reference:

--------------------------
     Data Structure
--------------------------

--------------------------
       Algorithm
--------------------------
from 1 upto num if divises then add to arr 

--------------------------
          Notes
--------------------------

=end

# def divisors(n)
# 	res = []
# 	1.upto(n) {|x| res << x if n % x == 0}
# 	res 
# end

def divisors(n)
	done = n / 2
	1.upto(n / 4).select {|x| n % x == 0} + [done, n]
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute