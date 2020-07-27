class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name, artist=nil)  #why artist = nil
    @name = name
    @artist = artist
    @@all << self         #why adding like this, why not just save
  end

  def artist_name
    if self.artist   #don't understand these two lines
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
#also what is the author name
#how do songs know all of its names


#
