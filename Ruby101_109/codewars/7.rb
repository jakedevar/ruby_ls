=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array of works
-  Output: a word string
---
**Explicit **
take one letter from each word in the array and use it to construct a completly new word
take the index of the word with a counter and add to str
---
**Clarifying Questions:**
1. will the target letters always include letters in order with the array of words
2. must it be case sensitive
3.
---
**Implicit Requirements:**
yes it is in order
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
p nth_char(['yoda', 'best', 'has']) == 'yes'

p nth_char([]) == ''

p nth_char(['X-ray']) == 'X'

p nth_char(['No', 'No']) == 'No'

p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'
---
Data Structure
--------------
an array of words that are strings
---
Algorithm
---------
set an empty string to var
set counter to 0
iterate through array each char with counter and add to str
**Helper Methods??**

Code
----
=end

# def nth_char(arr)
#   str = ''
#   counter = 0
#   loop do
#     break if counter >= arr.length
#     word = arr[counter]
#     str += word[counter]
#     counter += 1
#   end
#   str
# end

def nth_char(arr)
  arr.map.with_index { |n, i| n[i] }.join
end

p nth_char(['yoda', 'best', 'has']) #== 'yes'

p nth_char([]) == ''

p nth_char(['X-ray']) == 'X'

p nth_char(['No', 'No']) == 'No'

p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas',
            'Ecuador', 'Micronesia']) == 'Codewars'
