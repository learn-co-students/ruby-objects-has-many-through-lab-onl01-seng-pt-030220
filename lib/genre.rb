class Genre 
  attr_accessor :name, :songs, :artists
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = songs
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.genre == self}
  end
  
  def artists(name, artist, genre)
    Song.artist(name, artist, self)
    # song.artist = Artist
  end
  
end