require 'pry'
class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
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

    def new_song(name, genre)  # name = "Ninety Nine Problems" #genre=rap  #self = Jay-Z
        #binding.pry
        #Song.new(self, name, genre)
        #Song.new(self, genre, name)
        #Song.new(name, genre, self)
        temp =
        temp = Song.new(genre, name, self)
        binding.pry
        

    end

    def genres
        Song.all.select do |song|
            song.artist == self
        end
    end
end

