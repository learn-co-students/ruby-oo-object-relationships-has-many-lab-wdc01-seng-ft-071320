require_relative "./song.rb"
require 'pry'
class Artist

    attr_reader :name
    
    def initialize(name)
        @name = name
      
    end

    def songs
       Song.all.select do |song|
        song.artist == self
       end
    end

    def add_song(song)
      song.artist = self
      #binding.pry
    end

    def add_song_by_name(song_name)
        Song.new(song_name).artist = self
    end

    def self.song_count
        Song.all.length
    end
end