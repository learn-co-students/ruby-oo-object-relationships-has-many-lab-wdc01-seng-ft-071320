require "pry"

class Song
    attr_accessor :name, :artist
    @@all = []

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def artist=(artist)
    @artist = artist
end

def artist_name
    if not self.artist then
        nil
    else
        self.artist.name
    end
end



end