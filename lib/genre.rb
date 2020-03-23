class Genre 
  
  attr_reader :song, :artist, :name
  
  @@all = [ ]
  
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
     Song.all.select do |song|
      song.genre == self
    end
  end 

  def new_song(artist, song)
    Song.new(artist, song, self)
  end 
  
  def artists
    songs.map do |song|
      song.artist
    end 
  end 
  
end 