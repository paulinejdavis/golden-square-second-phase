# {{todo.list}} Method Design Recipe

## 1. Describe the Problem

_User can chronicle activites and tasks but string must includ #TODO._

## 2. Design the Method Signature

_boolean values._

```ruby
# 
todolkist - todo_check(string)
checking the string includes '#TODO' and if does or does not return
the relevant boolean value


```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

todo_check("") => false
todo_check("go to the post office") => false
todo_check("'#TODO' go to the gyn") => true
todo_check("wrap presents") => false
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---



<!-- END GENERATED SECTION DO NOT EDIT -->