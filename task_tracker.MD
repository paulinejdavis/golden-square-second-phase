# {{task-tracker}} Class Design Recipe

## 1. Describe the Problem

_A programme that allows the user to keep track of their tasks including adding 
adding tasks to a todo task list and view the list also._
_The user is also able to track and mark tasks as complete and remove them from the 
task list_


## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class TodoList
  def initialize() # name is a string
    # ...
  end

  def add(text) # text is a string
    # return nothing
  end

  def list()
    # returns a list of tasks
  end

  def complete(task) # task is a string
    # returns true if the task doesnt exist

  def delete(task) # task is a string
    # No return value
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
todo_list = todoList.new
todo_list.list # => []

# 2
todo_list = todoList.new
todo_list.add("make waffles")
todo_list.list # => ["make waffles"]

# 3
todo_list = todoList.new
todo_list.add("Call the bank")
todo_list.add("Go to the gym")
todo_list.list # => ["Call the bank", "Go to the gym"]

# 4
todo_list = todoList.new
todo_list.add("Call the bank")
todo_list.add("Go to the gym")
todo_list.complete("Call the bank")
todo_list.list # => ["Go to the gym"]

# 5
todo_list = todoList.new
todo_list.add("Call the bank")
todo_list.complete("Call the office)
todo_list.list # fails "No such task."


_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---


<!-- END GENERATED SECTION DO NOT EDIT -->