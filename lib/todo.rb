class Todo
  attr_accessor :title, :completed

  def initialize(title = "")
    @title = title
    @completed = false
  end

  def completed?
    @completed
  end

  def toggle
    @completed = !@completed
  end
end


t1 = Todo.new("write tests")
t1.toggle
# p t1
