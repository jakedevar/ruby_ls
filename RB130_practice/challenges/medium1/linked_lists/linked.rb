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
    head.value
  end

  def reverse
    arr = to_a.reverse
    SimpleLinkedList.from_a(arr)
  end

  def to_a
    res = []
    return res if empty?
    last = head
    loop do
      res << last.value
      break if last.next_node.nil?
      last = last.next_node
    end
    res
  end

  def self.from_a(arr)
    list = SimpleLinkedList.new
    return list if arr.nil?
    arr.reverse_each { |ele| list.push(ele) }
    list
  end

  def pop
    last_node = head
    loop do
      break if last_node.next_node.nil? || last_node.next_node.next_node.nil?
      last_node = last_node.next
    end
    value = last_node.value
    self.head = head.next_node if !last_node.next_node.nil?
    self.head = nil if last_node.next_node.nil?

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
