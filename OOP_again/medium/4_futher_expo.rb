require 'pry'
class CircularQueue
	attr_accessor :queue, :bool
	@@count = 0
	def initialize(n)
		@queue = Array.new(n)
		@bool = false
	end

	def enqueue num 
		flip_bool
		queue.unshift(num)
		queue.pop
		@@count += 1
	end

	def dequeue
		@@count += 1
		flip_bool
		queue.unshift(nil)
		queue.pop
		queue.unshift(nil)unless bool
		queue.pop unless bool
	end

	def flip_bool
		bool = true if @@count >= queue.size
	end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
p queue
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
p queue
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
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