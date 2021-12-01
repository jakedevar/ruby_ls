=begin
==========================
         Problem
--------------------------
create a circular queue using a class
when you call the instance methods you must take away the oldest and replace with nil 
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: - take away oldest and replace with nil
  - when quing you must overwrite whatever is infront of it. 
  - 
-  Inputs: an integer into a method 
-  Output: either queuing or dequeueing 
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- 
--------------------------
**Implicit Requirements:**
--------------------------
- must have two methods to make it function 
--------------------------
Examples/Test Cases/Edge's
--------------------------

-  Visual Reference:

--------------------------
     Data Structure
--------------------------
an integer going in to be pushed to array
or taking away the oldest item in the array 
--------------------------
       Algorithm
--------------------------
1. create the initialize with array
	- create a flase bool to flip true once enqueue makes a revolution 
2. create dequeue 
	- create an oldest instance var set to nil 
	- in dequeue at beggening set oldest to ind 
	- set ind in queue to nil 
	- also return the value you replace 
	- set a return value in dequque that is set to a clone of the ind and then replace and return 
	- make two seperate methods for dequeue if bool is true or not to be used in the method 
3. create enqueue 
	- make an instance index and set to zero 
	- make guard method to set index to zero if index == size 
	- 

--------------------------
          Notes
--------------------------
wait hold on, I don't know if i even need an oldest instance var
the idea is that the index will automatically be in the oldest spot just by running enqueue
nevermind I do need an oldest because i have to increment it without messing up the ind new 
im going to add in a peice of logic that makes oldest turn into ind once enqueue makes one full revolution 
=end
require 'pry'
class CircularQueue
	attr_accessor :queue, :ind, :oldest, :bool 
	
	def initialize(n)
		@queue = Array.new(n)
		@ind = 0 
		@oldest = -1
		@bool = false 
	end

	def enqueue num 
		self.bool = true if index_size?
		self.ind = 0 if index_size?
		queue[ind] = num
		self.ind += 1
	end

	def dequeue

		show = nil 
		self.oldest = ind if bool 
		
		self.bool = false if bool 
		self.oldest = 0 if oldest_size?
		show = queue[oldest].clone 
		queue[oldest] = nil 
		self.oldest += 1 
		show

	end

	def index_size?
		return true if ind == queue.size
		false
	end

	def oldest_size?
		return true if oldest == queue.size
		false
	end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1


queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)

puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)

puts queue.dequeue == 2
 
queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

#YAY and i didnt even look at the solution for this one this time. Actually I think I more or less glossed over the solution last time
# that being said my commitment is way different to LS on this pass thorugh. I'm starting to think that actually geting a conditional pass
# on that test was one of the best things that could have happened to me in terms of me actually understanding what hard work actually means 