=begin
==========================
         Problem
--------------------------
Below we have a listening device. It lets us record something that is said and store it for later use. In general, this is how the device should be used:

Listen for something, and if anything is said, record it for later use. If nothing is said, then do not record anything.

Anything that is said is retrieved by this listening device via a block. 

If nothing is said, then no block will be passed in. 

The listening device can also output the most recent recording using a Device#play method.

--------------------------
**Explicit Requirements**
--------------------------
-   Rules: - listen for an input is something is said record it, if nothing is said don't
  - any thing that is said is retrieved by this listening device via a block 
  - if nothing is said then no block will be passed in 
  - play will output the most recent recording 
-  Inputs: a string to a method 
-  Output: maybe a string 
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
a regular string that is stroed in recordings 
--------------------------
       Algorithm
--------------------------
1. make the play method in which the last item in the array is puts 
2. make the listen method in which if there is a block then rexord something 

--------------------------
          Notes
--------------------------

=end

class Device
  attr_reader :recordings
  def initialize
    @recordings = []
  end

  def play 
    puts recordings[-1]
  end

  def listen
    return unless block_given?
    record(yield) if block_given?
  end

  def record(recording)
    @recordings << recording
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.listen {'Hello'}
listener.play # Outputs "Hello World!"  