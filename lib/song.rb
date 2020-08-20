require 'pry'
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def artist_name
    if self.artist
      self.artist.name
      #binding.pry
    else
      nil
    end
  end

  def self.all
    @@all
  end
end
#binding.pry
#also what is the author name
#how do songs know all of its names


#
