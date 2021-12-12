=begin
==========================
         Problem
--------------------------

--------------------------
**Explicit Requirements**
--------------------------
-   Rules: 
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

you will have to deal with nil 
also you will have to deal with white space chars 

--------------------------
     Data Structure
--------------------------
a string that is input at instantiation 
--------------------------
       Algorithm
--------------------------


--------------------------
          Notes
--------------------------

=end

class Scrabble 
  def initialize str 
    @word = str 
  end

  def self.score str 
    score = 0 
    return score if str == nil
    str.each_char do |chr|
      case chr.upcase 
      when 'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T' then score += 1
      when 'D', 'G' then score += 2
      when 'B', 'C', 'M', 'P' then score += 3
      when 'F', 'H', 'V', 'W', 'Y' then score += 4
      when 'K' then score += 5 
      when 'J', 'X' then score += 8
      when 'Q', 'Z' then score += 10
      else score += 0
      end
    end
    score 
  end

  def score
    score = 0 
    return score if @word == nil
    @word.each_char do |chr|
      case chr.upcase 
      when 'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T' then score += 1
      when 'D', 'G' then score += 2
      when 'B', 'C', 'M', 'P' then score += 3
      when 'F', 'H', 'V', 'W', 'Y' then score += 4
      when 'K' then score += 5 
      when 'J', 'X' then score += 8
      when 'Q', 'Z' then score += 10
      else score += 0
      end
    end
    score 
  end 
end

