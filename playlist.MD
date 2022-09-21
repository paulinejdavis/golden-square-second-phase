# {{playlist}} Class Design Recipe

## 1. Describe the Problem

_User can track music listening. User can add songs listened to and 
see a list of song listened to._


## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class Playlist
  def initialize # song is a string
    @playlist = []
  end

  def add(song) # song is a string
    unless @playlist.include?(track)
    @playlist << song
  end

  def view
    return @playlist
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
playlist = Playlist.new
playlist.view # => []

# 2
playlist = Playlist.new
playlist.add("Mother Goose")
expect(playlist.view).to eq # => ["Mother Goose"]

# 3

playlist = Playlist.new
playlist.add("Mother Goose")
playlist.add("Merry Christmas")
expect(playlist.view).to eq # => ["Mother Goose", "Merry Christmas"]

# 4
playlist = Playlist.new
playlist.add("Mother Goose")
playlist.add("Merry Christmas")
playlist.add("Mother Goose")
expect(playlist.view).to eq ["Mother Goose", "Merry Christmas"]


_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


