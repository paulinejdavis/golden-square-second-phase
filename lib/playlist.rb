class Playlist
  def initialize 
    @playlist = []
  end

  def add(song) # song is a string
    unless @playlist.include?(song)
      @playlist << song
    end
  end

  def view
    return @playlist
  end
end