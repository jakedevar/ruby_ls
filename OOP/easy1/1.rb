=begin
==========================
complete the class so that the test caseswork as intended

--------------------------
**Explicit Requirements**
--------------------------
-   Rules: 
  -you may add any mehtods or instacne variables you need.
  - you may no make the implementation details public
  - the input will always fit in your terminal window
-  Inputs: an initialized object with a banner message as argument 
-  Output: a bannerized message 
--------------------------
**Clarifying Questions:**
--------------------------
1. make it all private 
2.
3.
--------------------------
**Implicit Requirements:**
--------------------------
do everything in a way that cannot be accessed outside of the class
make the banner padded to incorperate the message 
--------------------------
Examples/Test Cases/Edge's
--------------------------
banner = Banner.new('To boldly go where no one has gone before.')
puts banner
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
--------------------------
     Data Structure
--------------------------
working with already initialized class stuff just change around to 
get the banner to work
--------------------------
       Algorithm
--------------------------
1. create the horozontal rule 
2. create the empty line
3. make these instance methods private 

when creating the empty line do string interpolation easy peasy 


Code
----
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
    "+#{'-' * (@message.size + 2)}+"
  end

  def empty_line
    "|#{' ' * (@message.size + 2)}|"
  end

  def message_line
    "| #{@message} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
p banner.message_line
# puts banner
# # +--------------------------------------------+
# # |                                            |
# # | To boldly go where no one has gone before. |
# # |                                            |
# # +--------------------------------------------+

# banner = Banner.new('')
# puts banner
# # +--+
# # |  |
# # |  |
# # |  |
# # +--+