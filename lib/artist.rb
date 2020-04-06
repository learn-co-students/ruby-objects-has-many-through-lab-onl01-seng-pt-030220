# require 'pry'

class Artist
    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_song(title, genre)
        Song.new(title, self, genre)
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

        def genres
            songs.map do |song|
                song.genre
      
        end
    end

end
