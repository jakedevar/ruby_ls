require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!
require 'simplecov'
SimpleCov.start

require_relative 'todolist'

class TodoListTest < MiniTest::Test

  def setup
    @todo1 = Todo.new("Buy milk")
    @todo2 = Todo.new("Clean room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)
  end

  def test_to_a
    assert_equal(@todos, @list.to_a)
  end

  def test_size
    assert_equal(3, @list.to_a.size)
  end

  def test_first
    assert_equal(@list.first, @todo1)
  end

  def test_last
    assert_equal(@list.last, @todo3)
  end

  def test_shift
    todo = @list.shift 
    assert_equal(@todo1, todo) 
    assert_equal([@todo2, @todo3], @list.to_a)
  end

  def test_pop
    todo = @list.pop 
    assert_equal(@todo3, todo) 
    assert_equal([@todo1, @todo2], @list.to_a)
  end

  def test_done?
    assert_equal(false, @list.done?)
  end


  def test_add
    assert_raises(TypeError) {@list.add(1)}
    assert_raises(TypeError) { @list.add('hi') }
  end

  def test_shovel
    new_todo = Todo.new("Walk the dog")
    @list << new_todo
    @todos << new_todo

    assert_equal(@todos, @list.to_a)
  end

  def test_add_alias
    new_todo = Todo.new('Feed the cat')
    @list.add(new_todo)
    @todos << new_todo  

    assert_equal(@todos, @list.to_a)
  end

  def test_item_at
    assert_equal(@list.item_at(0), @todo1)
    assert_raises(IndexError) {@list.item_at(5)}
  end
end