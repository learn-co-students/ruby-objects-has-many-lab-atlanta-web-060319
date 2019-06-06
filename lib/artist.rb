class Artist
	attr_accessor :name
	@@songs = []

	def initialize(name)
		@name = name
	end

	def songs
		@@songs
	end

	def add_song(song_instance)
		 @@songs.push(song_instance)
		 song_instance.artist = self
	end

	def add_song_by_name(song_name)
		a_new_song = Song.new(song_name)
		@@songs.push(a_new_song)
		a_new_song.artist = self
	end

	def self.song_count
		@@songs.length
	end
end
