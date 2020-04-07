#The Artist model:
class Artist
#1 The Artist class needs a class variable @@all that begins as an empty array
attr_accessor :name
@@all =[]
#2 The Artist class needs a class method .all that lists each artist in the class variable
#3 An artist is initialized with a name and is saved in the @@all array.

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

#4 The Artist class needs an instance method, #new_song, that takes in an argument
#of a name and genre creates a new song. That song should know that it belongs to the artist.
#5 The Artist class needs an instance method, #songs, that iterates through all songs
#and finds the songs that belong to that artist. Try using select to achieve this.
#6 The Artist class needs an instance method, #genres that iterates over that
#artist's songs and collects the genre of each song.

  def genres
    songs.map do |song|
    song.genre
  end
end

 def new_song(name, genre)

   Song.new(name, self, genre)

 end




end
