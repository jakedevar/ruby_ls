=begin
PEDAC Template
==============
(Understand the) Problem
keep the letters at the front and the back of a word the same but sort the inner letters alpha beticalty 
punctuation must remain in the same place as it started 
------------------------
-  Inputs: a string of words or word
-  Output: a string of words or word
---
**Explicit **
---
dont touch punctuation
sort alphabeticaly 
**Clarifying Questions:**
1. no numbers 
2.
3.
---
**Implicit Requirements:**
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs:
  -  Output:
-  Example 2
  -  Inputs:
  -  Output:
---
_Your Test Cases:_
-  Example 3
  -  Inputs:
  -  Output:
---
_Your Edge Cases:_
-  Example 4
  -  Inputs:
  -  Output:
---
Data Structure
--------------
a simple string containing only letters and punctation 
---
Algorithm
---------
split by space
return a result array
take split and delete 1,,-2 add to array then sort and insert into current string 

**Helper Methods??**

Code
get index of punctation and add at place on stringusing delete on the string and adding the character 
deelte everything that is not aplha related from the string and save some where else 
----
=end

def scramble_words(string)
  result = []
  chars = string.split(' ')
  chars.each do |word|
    chars = word.chars
    arr = []
    punctation = []
    chars.each {|chr| punctation << chr if chr.match(/[^a-zA-Z\s]/)}
    arr << chars.shift
    arr << chars.pop
    arr.insert(1, chars.sort)
    result << arr.join
    
  end
  result.join(' ')
end

# was about to give up because wtf is the punctuation but codewars wouldent let me see the solution because rank was too low. going to do easy stuff first 

# p scramble_words('professionals') == 'paefilnoorsss'

# p scramble_words('i') == 'i'

# p scramble_words('') == ''

# p scramble_words('me') == 'me'

# p scramble_words('you') == 'you'

p scramble_words('card-carrying') == 'caac-dinrrryg'

p scramble_words("shan't") == "sahn't"

p scramble_words('-dcba') == '-dbca'

p scramble_words('dcba.') == 'dbca.'

p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."