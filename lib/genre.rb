class Genre

    @@all = []

    def self.all
        @@all
    end 

    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end 

    def songs
        Song.all.select {|song| song.genre == self}
    end 

    def artists                     
        ##self.songs.collect do |song|  
        ##  song.artist
        ##end
        songs.collect {|song| song.artist} ###This is cleaner
    end
end 