require "pry"

class Artist
attr_accessor :name

@@all = []

def initialize(name)
    @name = name
    @@all << self
end

def songs
    Song.all.select {|this_song| this_song.artist == self}
end 

def add_song(song)
   @@all << song
   song.artist = self
end

def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
end

def self.song_count
    Song.all.count
end







































end

