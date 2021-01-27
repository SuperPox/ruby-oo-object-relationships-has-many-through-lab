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

    def new_song(name, genre)  
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres #iterate over song, find songs that belong to artist, find genre of those songs  
        arr = []
        Song.all.select do |song|
            if song.artist == self
                arr << song.genre  #pry: arr = [#<Genre:0x000055f669ec6958 @name="rap">]
                #binding.pry
            end
        end
        return arr
    end

end

