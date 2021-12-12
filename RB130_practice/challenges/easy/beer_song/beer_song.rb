=begin
==========================
         Problem
--------------------------
write a program that spits out the verses of 99 bottles of beer on the wall 
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: when there are no more bottles of beer then say that, if there is no more then you have to make it 99 on the last verse 
  - there are really three methods, a verse, verses, and the whole song. 
  - should be able to take a range and spit out the verses that are within it 
  - 
-  Inputs: an integer which spits out the verse 
-  Output: a verse depending on the integer 
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- 
--------------------------
**Implicit Requirements:**
--------------------------
there must be a range to do 
--------------------------
Examples/Test Cases/Edge's
--------------------------

-  Visual Reference:

--------------------------
     Data Structure
--------------------------
a string that has the correct numbers in it 
the verse method should come first so that only one is ouptut, then you can build on that method from there
--------------------------
       Algorithm
--------------------------
1. set up a default range that is changed if there is a second arg 
2. 

1. set arg and then make the string
2. make it so 0 is actually 99 

--------------------------
          Notes
--------------------------

=end

class BeerSong
  def self.verse n 
    if n > 2 
      "#{n} bottles of beer on the wall, #{n} bottles of beer.\n" \
      "Take one down and pass it around, #{n - 1} bottles of beer on the wall.\n"
    elsif n == 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    elsif n == 1
        "1 bottle of beer on the wall, 1 bottle of beer.\n" \
        "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else 
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def self.verses max, min 
    current_verse = max 
    str = []
    while current_verse >= min 
      str << "#{verse(current_verse)}"
      current_verse -= 1
    end
    str.join("\n")
  end

  def self.lyrics
    verses(99, 0)
  end
end