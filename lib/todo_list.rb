#only worked on problematic elements with piper
class TodoList
  def initialize
    @list = []
  end
  
  def add(todo) # todo is an instance of Todo
    @todo = todo  
    @list << @todo
      # Returns nothing
  end
  
  def incomplete
    @list.select { |task| !task.done? }.map { |task| task.task }
      # Returns all non-done todos
    #   WORK ON THIS SECTION PIPER. RUN RSPEC.
  end
  
  def complete
    complete = @list.select { |task| task.done? }.map { |task| task.task }
      # Returns all complete todos
  end
  
  def give_up!
    @list.select { |task| !task.done? }.map { |task| task.mark_done! }
    complete
      # Marks all todos as complete
  end
end