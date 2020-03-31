class Artist

    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        my_songs = songs
        my_genres = my_songs.collect do |song|
            song.genre
        end
        my_genres
    end


end
