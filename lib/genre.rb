require "pry"
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
    Song.all.select do |a| 
        a.genre == self 
    end 
end

    def artists 
    songs.map do |a| 
        a.artist 
    end
    end

end
