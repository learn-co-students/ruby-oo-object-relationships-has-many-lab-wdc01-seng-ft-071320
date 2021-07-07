require 'pry'
class Artist

    attr_accessor :name

    #array of artist objects
    @@all_artists = []

    def initialize(name)
        @name = name
        @@all_artists << self
    end

    def songs
        #Return all songs that belong to particular artist
        #Has many songs
        Song.all.find_all do |song|
            song.artist == self
        end
    end

    def add_song(song)
        #Add song and attribute artist as oneself
        song.artist = self
    end

    def add_song_by_name(song_name)
        Song.new(song_name).artist = self
    end

    def self.all
        @@all_artists
    end

    def self.song_count
        # returns the total number of songs 
        # associated to all existing artists
        Song.all.count
    end

end