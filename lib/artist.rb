require "pry"

class Artist

    attr_accessor :name
    attr_reader :songs
    

    @@song_count = 0
    @@all = []


    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def add_song(song)
        song.artist = self
        @songs << song
        @@song_count += 1
    end

    def add_song_by_name(name)
        song = Song.new(name)
        @songs << song
        song.artist = self
        @@song_count += 1
    end

    def self.song_count
        @@song_count
    end

end 