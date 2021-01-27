class Genre
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
            song.genre == self
        end
    end

    def artists #iterate over song, find songs that belong to genre, find artist of those songs  
        arr = []
        Song.all.select do |song|
            if song.genre == self
                arr << song.artist  #pry: arr = [#<Genre:0x000055f669ec6958 @name="rap">]
                #binding.pry
            end
        end
        return arr
    end
end
