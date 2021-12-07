# This class represents a todo item and its associated
# data: name and description. There's also a "done"
# flag to show whether this todo item is done.

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.title &&
      description == otherTodo.description &&
      done == otherTodo.done
  end
end

class TodoList
  attr_accessor :title 
  attr_reader :todos 
  
  def initialize(title)
    @title = title 
    @todos = []
  end

  def todo?(todo)
    todo.class == Todo 
  end

  def add(todo)
    if todo?(todo)
      todos << todo 
    else 
      raise TypeError
    end
  end

  def <<(todo)
    raise TypeError, 'can only add Todo objects' unless todo.instance_of? Todo

    @todos << todo
  end
  alias_method :add, :<<

  def size 
    todos.size
  end

  def first
    todos.first
  end

  def last
    todos.last 
  end

  def to_a
    p todos.map {|todo| todo.to_s}
  end

  def done?
    p todos.all? {|todo| todo.done == true}
  end

  def item_at(ind)
    puts todos.fetch(ind)
  end

  def mark_done_at(ind)
    p todos.fetch(ind).done!
  end

  def mark_undone_at(ind)
    p todos.fetch(ind).undone!
  end

  def done!
    todos.each {|todo| todo.done!}
  end

  def shift 
    p todos.shift
  end

  def pop
    p todos.pop
  end

  def remove_at(ind)
    raise IndexError if ind >= todos.size
    p todos.delete_at(ind)
  end

  def to_s
    puts "---- #{title} ----"
    puts todos
  end

  def each
    counter = 0 

    while counter < todos.size 
      todos[counter]
      yield(todos[counter])
      counter += 1
    end

    self
  end

  def select
    list = TodoList.new(title)

    each do |todo|
      list.add(todo) if yield(todo)
    end
    list
  end

  def find_by_title(str)
    select {|todo| todo.title.downcase == str.downcase}.first
  end

  def all_done
    select {|todo| todo.done?}
  end

  def all_not_done
    select {|todo| !todo.done?}
  end

  def mark_done(str)
    find_by_title(title) && find_by_title(title).done!
  end

  def mark_all_done
    each {|todo| todo.done!}
  end

  def mark_all_undone
    each {|todo| todo.undone!}
  end

end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)

todo1.done!
todo2.done!

p list.mark_all_undone


# find_by_title   takes a string as argument, and returns the first Todo object that matches the argument. Return nil if no todo is found.
# all_done  returns new TodoList object containing only the done items
# all_not_done  returns new TodoList object containing only the not done items
# mark_done   takes a string as argument, and marks the first Todo object that matches the argument as done.
# mark_all_done   mark every todo as done
# mark_all_undone   mark every todo as not done