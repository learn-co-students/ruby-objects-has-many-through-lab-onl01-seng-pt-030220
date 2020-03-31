class Song 
attr_accessor :name, :artist, :genre 
@@all = [] 

def self.all 
    @@all 
end

def initialize(name, artist, genre)
    @artist = artist 
    @name = name
    @genre = genre
    @@all << self 
end 

end