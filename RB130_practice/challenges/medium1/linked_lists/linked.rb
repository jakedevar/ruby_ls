# problem: pop
# i have to delete the last item from the list while simultaniusly returning the value
# 1. iterate to last item, 2. set last item to var 3. make nextnode = nil
require 'pry'

class SimpleLinkedList
  attr_accessor :head

  def initialize
    self.head = nil
  end

  def size
    return 0 if head.nil?

    last_node = head
    counter = 0

    loop do 
      counter += 1

      break if last_node.next_node.nil?
      last_node = last_node.next_node
    end

    counter
  end

  def empty?
    head.nil?
  end

  def push(value)
    if head.nil?
      self.head = Element.new(value, nil)
    else
      old = head 
      self.head = Element.new(value, old)
    end
  end

  def peek
    return nil if empty?
    last = head
    until last.next_node.nil? 
      # binding.pry
      last = last.next_node
    end
    last.value
  end

  def reverse; end

  def to_a; end

  def self.from_a(arr)
    list = SimpleLinkedList.new
    return list if arr.nil?
    arr.each { |ele| list.push(ele) }
    list
  end

  def pop
    last_node = head
    until last_node.next_node.next_node.nil?
      last_node = last_node.next
    end
    value = last_node.next_node.value
    last_node.next_node = nil
    value
  end
end

class Element
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    self.value = value
    self.next_node = next_node
  end

  def datum
    value
  end

  def tail?
    next_node.nil?
  end

  def next
    next_node
  end
end

# ll = SimpleLinkedList.new
# ll.push(1)
# ll.push(2)
# # ll.push(30)

# p ll.pop
# p ll.head.next
