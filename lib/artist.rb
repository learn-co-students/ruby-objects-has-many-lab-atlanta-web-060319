class Artist
    @@all = []
    attr_accessor :name, :songs
    
    def initialize(name)
        @name = name
        @songs = [] # has_many songs
        @@all << self
    end

    def self.all
        @@all
    end

    # an individual artist willneed a method that 
    # returns a collection of all the songs that 
    # belong to that artist.
    def song
        Song.all.select {|song| song.artist == self} # returns all the songs for an artist
    end

    # a song belongs_to an artist
    def add_song(song)
        @songs << song
        song.artist = self
    end 

    def add_song_by_name(name)
        song = Song.new(name) # creates a song with a song name 
        @songs << song # adds song to [] in Artist class
        song.artist = self # tells the song that it belongs to an artist
    end 

    # a class method that returns the total
    # number of songs associated to all existing artists
    def self.song_count
        song.all.count
    end 


end 