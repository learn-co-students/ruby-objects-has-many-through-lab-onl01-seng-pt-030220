class Genre 
  
  @@all = []
  
  attr_accessor :name, :artist, :song
  
  def initialize(name)
    @name = name 
    @artist = artist
    @song = song
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.genre == self}
  end
  
  def artists 
    songs.collect {|song| song.artist}
  end
  
  
  
  
  
  
  
  
  
  
  
end