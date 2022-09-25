# only worked on problematic elements

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
      #   paired with piper
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
  4:12
  That is the TodoList file
  4:13
  And this is the spec file:
  
  
  Pauline Davis
    4:13 PM
  Wow. Thank you.
  
  
  Piper-Rose Armstrong
    4:13 PM
  require 'todo'
  require 'todo_list'
  
  RSpec.describe Todo do
    context 'testing the task method' do
      it 'returns the task as a string' do
        task = Todo.new("Do a load of laundry.")
        expect(task.task).to eq "Do a load of laundry." 
      end
    end
  
    context 'testing the mark_done! method' do
      it 'marks the todo as done' do
        task = Todo.new("Do a load of laundry.")
        expect(task.mark_done!).to eq ["Do a load of laundry."]
      end 
    end
  
    context 'testing the done? method' do
      it 'returns true if the task is done' do
        task = Todo.new("Do a load of laundry.")
        task.mark_done!
        expect(task.done?).to eq true
      end
  
      it 'returns false if the task has not been done' do
        task = Todo.new("Do a load of laundry.")
        expect(task.done?).to eq false
      end
    end
  end
  
  RSpec.describe 'Integrated To-Do List' do
    context 'testing the add method' do
      it 'adds a task to the todo list' do
        list = TodoList.new
        task = Todo.new("Hang out the washing.")
        expect(list.add(task)).to eq [task]
      end
    end
  
    context 'testing the incomplete method' do
      it 'returns all non-done todos' do
          list = TodoList.new
          task = Todo.new("Hang out the washing.")
          list.add(task)
          task2 = Todo.new("Make dinner.")
          list.add(task2)
          task2.mark_done!
          expect(list.incomplete).to eq ["Hang out the washing."]
      end
  
      it 'returns multiple non-done todos' do
        list = TodoList.new
        task = Todo.new("Hang out the washing.")
        list.add(task)
        task2 = Todo.new("Make dinner.")
        list.add(task2)
        task2.mark_done!
        task3 = Todo.new("Finish this challenge.")
        list.add(task3)
        expect(list.incomplete).to eq ["Hang out the washing.", "Finish this challenge."]
      end 
  
      it 'returns multiple non-done todos' do
        list = TodoList.new
        task = Todo.new("Hang out the washing.")
        list.add(task)
        task2 = Todo.new("Make dinner.")
        list.add(task2)
        task2.mark_done!
        task3 = Todo.new("Finish this challenge.")
        list.add(task3)
        task4 = Todo.new("Alter my dress.")
        list.add(task4)
        task4.mark_done!
        expect(list.incomplete).to eq ["Hang out the washing.", "Finish this challenge."]
      end 
    end
  
    context "testing the complete method" do
      it "returns all complete todos" do
        list = TodoList.new
          task = Todo.new("Hang out the washing.")
          list.add(task)
          task2 = Todo.new("Make dinner.")
          list.add(task2)
          task2.mark_done!
          expect(list.complete).to eq ["Make dinner."]
      end
  
      it "returns all complete todos" do
        list = TodoList.new
          task = Todo.new("Hang out the washing.")
          list.add(task)
          task2 = Todo.new("Make dinner.")
          list.add(task2)
          task2.mark_done!
          task3 = Todo.new("Finish this challenge.")
          list.add(task3)
          expect(list.complete).to eq ["Make dinner."]
      end
  
      it "returns all complete todos" do
        list = TodoList.new
          task = Todo.new("Hang out the washing.")
          list.add(task)
          task2 = Todo.new("Make dinner.")
          list.add(task2)
          task2.mark_done!
          task3 = Todo.new("Finish this challenge.")
          list.add(task3)
          task4 = Todo.new("Alter my dress.")
          list.add(task4)
          task4.mark_done!
          expect(list.complete).to eq ["Make dinner.", "Alter my dress."]
      end
    end
  
    context "testing the give_up! method" do
      it "marks all todos as complete" do
        list = TodoList.new
        task = Todo.new("Hang out the washing.")
        list.add(task)
        task2 = Todo.new("Make dinner.")
        list.add(task2)
        task2.mark_done!
        expect(list.give_up!).to eq ["Hang out the washing.", "Make dinner."]
      end
  
      it "marks all todos as complete" do
        list = TodoList.new
        task = Todo.new("Hang out the washing.")
        list.add(task)
        task2 = Todo.new("Make dinner.")
        list.add(task2)
        task2.mark_done!
        task3 = Todo.new("Finish this challenge.")
        list.add(task3)
        expect(list.give_up!).to eq ["Hang out the washing.", "Make dinner.", "Finish this challenge."]
      end
  
      it "marks all todos as complete" do
        list = TodoList.new
        task = Todo.new("Hang out the washing.")
        list.add(task)
        task2 = Todo.new("Make dinner.")
        list.add(task2)
        task2.mark_done!
        task3 = Todo.new("Finish this challenge.")
        list.add(task3)
        task4 = Todo.new("Alter my dress.")
        list.add(task4)
        task4.mark_done!
        expect(list.give_up!).to eq ["Hang out the washing.", "Make dinner.", "Finish this challenge.", "Alter my dress."]
      end
    end
  end
  
  # require 'todo'

# RSpec. describe 'todo check for "#TODO"' do
#     it 'rtns false if the string is empty' do
#     expect(todo_check("")).to eq (false)
#     end

#     it 'rtns false if the string does not contain "#TODO"' do
#      expect(todo_check("walk the dog")).to eq (false)
#     end

#     it 'rtns true if the string does not contain "#TODO"' do
#      expect(todo_check("go to the gym '#TODO")).to eq (true)
#     end
    
# end