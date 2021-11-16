=begin
==========================
         Problem
--------------------------
complete the class for constructing boxed banners

complete this class so that the test cases work

you can add any methods or instance variables you need 

do not make implementation details public
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: - implementation not publix
  - you can add anything you want 
  - the input will always fit in your terminal window
-  Inputs: a string 
-  Output: a banner 
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- 
--------------------------
**Implicit Requirements:**
--------------------------
there must be three methods that you use to create it 
you must use the characters that make up a banner 

--------------------------
Examples/Test Cases/Edge's
--------------------------

-  Visual Reference:

--------------------------
     Data Structure
--------------------------
jsut a regular string is being input 
--------------------------
       Algorithm
--------------------------
1. make the horizontal rule
2. make an empty line method
3. make a message line 

--------------------------
          Notes
--------------------------

=end

class Banner
  def initialize(message)
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+-#{'-' * @message.length}-+"
  end

  def empty_line
    "| #{' ' * @message.length} |"
  end

  def message_line
    "| #{@message} |"
  end
end

puts Banner.new("Wow I like pie")