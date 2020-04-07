#The Song model:
class Song
#The Song class needs a class variable @@all that begins as an empty array.
#The Song class needs a class method .all that lists each song in the class variable.
#A song should be initialized with a name, an artist, and a genre, and be saved in the @@all array.
attr_accessor :name, :artist, :genre
@@all =[]
  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
