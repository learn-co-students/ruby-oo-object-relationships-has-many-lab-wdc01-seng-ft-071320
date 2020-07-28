
class Artist

    attr_accessor :name
    
    @@all = []
    
    def initialize (name)
        @name = name

        @@all << self
    end

    def songs
        songs = Song.all.select do |songs|
            songs.artist == self
         end
         songs.map do |song|
            song
         end
    end

    def add_song(song)
        song.artist = self
    end

    def self.all
        @all
    end

    def add_song_by_name(song_name)
        Song.new(song_name).artist = self
    end

    def self.song_count
        Song.all.length
    end

end


