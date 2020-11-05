
require_relative './song.rb'
require_relative './artist.rb'

class Genre
attr_accessor :name
@@all = []

     def initialize(name)
          @name = name
          self.class.all << self
     end

     def artists
          songs.collect{|songs| song.artist}
     end

     def songs
          Song.all.select do |song| 
               song.genre == self
          end         
     end

     def artists
          songs.collect {|song| song.artist}
     end

     def self.all
          @@all
     end

end