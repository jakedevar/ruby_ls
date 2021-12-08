=begin
==========================
         Problem
--------------------------
Modify the method below so that the display/output of items is moved to a block, and its implementation is left up to the user of the gather method.
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: 
  - display/output of items is moved to a block and its implementation is left to the user 
  - use the items arr
  - 
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


--------------------------
          Notes
--------------------------

=end


items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "Nice selection of food we have gathered!"
end

gather(items) {|yes| puts yes.join(' ')}