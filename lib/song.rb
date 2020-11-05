
require_relative './artist.rb'
require_relative './genre.rb'

class Song
attr_accessor :artist, :genre, :name
@@all =[]

     def initialize(name, artist, genre = "")
          @name = name
          @artist = artist
          @genre = genre
          self.class.all << self
     end

     def self.all
          @@all 
     end

end