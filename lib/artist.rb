class Artist
  attr_accessor :name
  
  
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(new_song)
    @songs << new_song
    new_song.artist = self
  end
  
  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
  end
  
  def self.song_count
    @songs.length
  end
end