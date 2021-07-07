class Artist

    @@all = []

    def self.all
        @@all
    end

    attr_accessor :songs

    attr_reader :name

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def new_song(song, genre)
        Song.new(name, self, genre)
    end 

    def songs
        Song.all.select {|song| song.artist == self}
    end 

    def genres                     
        songs.map {|song| song.genre}
    end

end 