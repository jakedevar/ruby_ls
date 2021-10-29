=begin
==========================
         Problem
--------------------------
create a circular que, where the oldest items are deleted or overwritten with the newest items 
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: you have to return the number that was dequeued, it must behave like a circular buffer
  - must keep the array the same size the entire time
-  Inputs: arr size, integers to be added 
-  Output: when dequeued return the numebr 
--------------------------
**Clarifying Questions:**
--------------------------
1.
2.
3.
--------------------------
**Implicit Requirements:**
--------------------------

--------------------------
Examples/Test Cases/Edge's
--------------------------
copy pasta
-  Visual Reference:

--------------------------
     Data Structure
--------------------------
an arays 
--------------------------
       Algorithm
--------------------------
1. create the array with the max size
2. keep track of the starting number and add number with that 
3. also keep track of where you ended because that is your newest additions
4. if the buffer is full then 

--------------------------
          Notes
--------------------------

=end

class CircularQueue 
	attr_accessor :buffer, :newest, :oldest
  def initialize(buffer_size)
  	@buffer = Array.new(buffer_size)
  	@newest = 0
  	@oldest = 0
	end

	def dequeue
		@oldest += 1
		
		@buffer.insert(@oldest - 1, nil)
		@buffer.delete_at(@oldest - 1)
	end

	def enqueue(int)
		@newest += 1
		@oldest += 1 if @newest == @oldest
		@oldest = 0 if @oldest == @buffer.size

		@newest = 0 if @newest == @buffer.size
		
		@buffer[@newest] = int
	end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
# p queue.buffer
p queue.dequeue #== 1
# p queue.buffer

queue.enqueue(3)
queue.enqueue(4)
p queue.dequeue #== 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
p queue.buffer
puts queue.dequeue #== 5
puts queue.dequeue #== 6
puts queue.dequeue #== 7
puts queue.dequeue == nil

# queue = CircularQueue.new(4)
# puts queue.dequeue == nil

# queue.enqueue(1)
# queue.enqueue(2)
# puts queue.dequeue == 1

# queue.enqueue(3)
# queue.enqueue(4)
# puts queue.dequeue == 2

# queue.enqueue(5)
# queue.enqueue(6)
# queue.enqueue(7)
# puts queue.dequeue == 4
# puts queue.dequeue == 5
# puts queue.dequeue == 6
# puts queue.dequeue == 7
# puts queue.dequeue == nil