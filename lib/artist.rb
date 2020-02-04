class Artist
    attr_accessor :name, :song, :genre

    @@all = []

    def initialize(name)
        @name = name
        @song = song
        @genre = genre
        save
    end

    def save 
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end
    
    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        songs.map do |song|
            song.genre
        end
    end
end