class Song

    @@all = []

    def self.all
        @@all
    end 

    attr_accessor :name, :genre, :artist

    def initialize(name, artist, genre)
        @name, @genre, @artist = name, genre, artist
        @@all << self
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def songs
        @songs
    end


end 