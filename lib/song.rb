require_relative "./artist.rb"

class Song

    attr_accessor :artist, :name

    @@all = []
    def initialize(name)
        @name = name
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist == nil
            return nil
        else
        self.artist.name
        end
    end
end

# adele = Artist.new("adele")
# hello = Song.new("hello", adele)
# print Song.all