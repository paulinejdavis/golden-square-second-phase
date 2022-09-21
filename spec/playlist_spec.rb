require 'playlist.rb'

RSpec.describe Playlist do
  it 'creates a list' do
    playlist = Playlist.new
    expect(playlist.view).to eq []
  end

  context 'when a song is given' do
    it 'adds a song to the playlist' do
      playlist = Playlist.new
      playlist.add("Mother Goose")
      expect(playlist.view).to eq ["Mother Goose"]
    end
  end

  context 'when given two songs' do
    it 'adds the song to the playlist' do
      playlist = Playlist.new
      playlist.add("Mother Goose")
      playlist.add("Merry Christmas")
      expect(playlist.view).to eq ["Mother Goose", "Merry Christmas"]
    end
  end

  context 'when given a duplicate song' do
    it 'does not add duplicates to the playlist' do
      playlist = Playlist.new
      playlist.add("Mother Goose")
      playlist.add("Merry Christmas")
      playlist.add("Mother Goose")
      expect(playlist.view).to eq ["Mother Goose", "Merry Christmas"]
    end
  end
end