class Artist

    attr_accessor :name
    attr_reader :songs, :genre

    @@all =[]

    def self.all
     @@all
    end

    def initialize (name)
        @name = name
        @genre = genre
        @songs= songs
        @@all << self
    end

    #songs, that iterates through all songs and finds the songs that belong to that artist. Try using select to achieve this.
    def songs
      Song.all.select {|song| song.artist == self}
    end
    #new_song, that takes in an argument of a name and genre creates a new song. That song should know that it belongs to the artist.
    def new_song(name, genre)
       song = Song.new(name, self, genre)
       self.songs.last
    end
    
    def genres
      Song.all.map do |song|
      song.genre
      end
    end
end