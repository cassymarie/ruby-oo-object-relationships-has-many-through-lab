require_relative './song.rb'
require_relative './genre.rb'

class Artist
attr_accessor :name, :genre 
@@all = []

     def initialize(name)
          @name = name
          # @songs = []
          self.class.all << self
     end

     def songs
          Song.all.select do |song| 
               song.artist == self
          end
     end

     def genres
          songs.collect {|song|song.genre}
     end

     def new_song(name, genre)
         Song.new(name, self, genre)
     end

     def self.all
          @@all
     end

end