# File: lib/diary.rb
class Diary
    def initialize
        @entries = []
    end
  
    def add(entry) # entry is an instance of DiaryEntry
      @entries << entry
    end
  
    def all
      return @entries
    end
  
    def count_words
      # return @entries.map(&:count_words).sum
      return @entries.sum(&:count_words)
    end
  
    def reading_time(wpm)
      # return @entries.sum do |entry|
      #   entry.reading_time(wpm)
      # end
      fail "WPM must be positive" unless wpm.positive?
      return (count_words / wpm.to_f).ceil
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
        #  return @entries.first
        readable_entries = @entries.filter do |entry|
          entry.reading_time(wpm)  <= minutes
        end
        return readable_entries.first
    end
 end
      # Returns an instance of diary entry representing the entry that is closest 
      # to, but not over, the length that the user could read in the minutes they
      # have available given their reading speed.
 
  
  # File: lib/diary_entry.rb
  class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      # ...
    end
  
    def title
      # Returns the title as a string
    end
  
    def contents
      # Returns the contents as a string
    end
  
    def count_words
      # Returns the number of words in the contents as an integer
    end
  
    def reading_time(wpm) # wpm is an integer representing
                          # the number of words the user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
    end
  
    def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
    end
  end