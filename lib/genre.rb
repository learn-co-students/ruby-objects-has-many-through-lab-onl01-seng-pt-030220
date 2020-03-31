class Genre

    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        my_songs = songs
        my_artists = my_songs.collect do |song|
            song.artist
        end
        my_artists
    end


end
