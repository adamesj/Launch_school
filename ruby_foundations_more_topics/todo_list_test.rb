require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require 'simplecov'
SimpleCov.start

require_relative 'todo_list'

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

  # Your tests go here. Remember they must start with "test_"

  def test_to_a
    assert_equal(@todos, @list.to_a)
  end

  def test_size
    assert_equal(3, @list.size)
  end

  def test_first
    assert_equal(@todo1, @list.first)
  end

  def test_last
    assert_equal(@todo3, @list.last)
  end

  def test_shift
    # TodoList#shift should remove and return the first item in the list.
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
    # return true if all items in the list are done, and false otherwise.
    @list.each { |todo| todo.done! }
    assert_equal(true, @list.done?)
  end

  def test_type_error
    assert_raises(TypeError) { @list.add(1) }
    assert_raises(TypeError) { @list.add('hi') }
  end

  def test_add_alias
    todo = Todo.new("Walk the dog")
    @list.add(todo)
    @todos << todo
    assert_equal(@todos, @list.to_a)
  end

  def test_add
    todo = Todo.new("Walk the dog")
    @list << todo
    assert_includes(@list, todo)
  end

  def test_item_at
    assert_equal(@todo3, @list.item_at(2))
    assert_raises(IndexError) { @list.item_at(3) }
  end

  def test_mark_done_at
    @list.mark_done_at(0)
    assert(@list.item_at(0).done?)
    assert_raises(IndexError) { @list.mark_done_at(3) }
  end

  def test_mark_undone_at
    @list.mark_undone_at(0)
    assert_equal(false, @list.item_at(0).done?)
    assert_raises(IndexError) { @list.mark_done_at(3) }
  end

  def test_done_bang
    @list.done!
    assert_equal(true, @todo1.done?)
    assert_equal(true, @todo2.done?)
    assert_equal(true, @todo3.done?)
    assert_equal(true, @list.done?)
  end

  def test_remove_at?
    @list.remove_at(2)
    refute_includes(@list, @todo3)
    assert_raises(IndexError) { @list.mark_done_at(3) }
  end

  def test_to_s
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [ ] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT

    assert_equal(output, @list.to_s)

    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [X] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT

    @list.mark_done_at(0)
    assert_equal(output, @list.to_s)

    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [X] Buy milk
    [X] Clean room
    [X] Go to gym
    OUTPUT
    
    @list.done!
    assert_equal(output, @list.to_s)
  end

  def test_each
    result = []
    @list.each { |todo| result << todo }
    assert_equal([@todo1, @todo2, @todo3], result)
    assert_equal(@list, @list.each {|todo| nil })
  end

  def test_select
    @list.mark_done_at(1)
    result = @list.select { |todo| todo.done? }
    assert_equal([@todo2], result.to_a)
  end

  def test_find_by_title
    assert_equal(@todo1, @list.find_by_title("Buy milk"))
  end

  def test_all_done
    @list.mark_done_at(1)
    @list.mark_done_at(2)
    assert_equal([@todo2, @todo3], @list.all_done.to_a)
  end
end