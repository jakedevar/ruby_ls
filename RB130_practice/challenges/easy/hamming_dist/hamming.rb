=begin
==========================
         Problem
--------------------------
By counting the number of differences between two homologous DNA strands taken from different genomes with a common ancestor, 
we get a measure of the minimum number of point mutations that could have occurred on the evolutionary path between the two strands.

The Hamming distance is only defined for sequences of equal length. 

If you have two sequences of unequal length, you should compute the Hamming distance over the shorter length.
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: - count the number of things that are not the same in a string of stuff 
-  Inputs: a string of dna that is compared to another 
-  Output: a number showing the distance 
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

we need to accoutn for strings being longer than the other one
we need to account for empty strings 
we need to also 

--------------------------
     Data Structure
--------------------------
string compared to other strings and count the diffs 
--------------------------
       Algorithm
--------------------------
1. iterate through both at the same time 
  - if one is bigger than make it iterate through the smaller 
2. increment counter when one is unequal
3. return counter 

how to do logic for setting longer distacne 
--------------------------
          Notes
--------------------------

=end

class DNA
  def initialize str 
    @strand = str 
  end

  def hamming_distance str 
    counter = 0 
    @strand.each_char.with_index {|ele, ind| return counter if str[ind] == nil;counter += 1 if ele != str[ind]}

    counter 
  end

  def length_greater? str 
    @strand.size > str.size 
  end
end