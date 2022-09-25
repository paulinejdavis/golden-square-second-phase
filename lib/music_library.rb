# File: lib/music_library.rb

class MusicLibrary
    def initialize
      @tracks = []
    end
  
    def add(track) # track is an instance of Track
      @tracks << track
    end
  
    def all
      return @tracks
    end
    
    def search_by_title(keyword) 
      @tracks.select do |track|
        track.title.include?(keyword) 
      end
    end
  end