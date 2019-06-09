class Song

    @@all = []
    
    attr_accessor :name, :artist 

    def initialize(name)
        @name = name
        artist.song << self # belongs_to an artist
        @@all << self
    end

    def self.all
        @@all
    end 

# Song #name has a name
   
# Song #artist belongs to an artist

# Song #artist_name knows the name of its artist
# returns nil if the song does not have an artist
   def artist_name
    self.artist.name if artist 
   end 

end 

