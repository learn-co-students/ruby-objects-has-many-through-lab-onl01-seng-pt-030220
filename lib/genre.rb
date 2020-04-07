#The Genre model:
class Genre
#1 The Genre class needs a class variable @@all that begins as an empty array.
attr_accessor :name
@@all =[]
#2 The Genre class needs a class method .all that lists each genre in the class variable.
#3 A genre should be initialized with a name and be saved in the @@all array.
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
#4 The Genre class needs an instance method, #songs, that iterates through all songs
#and finds the songs that belong to that genre.
def songs
  Song.all.select do |song|
    song.genre == self
  end
end
#5The Genre class needs an instance method, #artists, that iterates over the
#genre's collection of songs and collects the artist that owns each song.

def artists
      songs.map do |song|
        song.artist
        #artists has many artists, through songs
    end
  end

end
