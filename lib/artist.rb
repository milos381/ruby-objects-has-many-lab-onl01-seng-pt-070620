require 'pry'

class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []   #having many of something means you own a collection of that thing.
                  # Recall that we use instance variables to store the attributes of a given
                  # instance of a class. This instance variable is set equal to an empty arr
                  #  because our artist doesn't have any songs yet.
  end

  #  it isn't the song's responsibility to add itself
  #                     to the artist's collection of songs, it is the artist's
  #                      responsibility to add a new song to their collection.
  #
  #                     That's why we'll write the method that adds songs to
  #                     an artist's collection in the Artist class:
     #binding.pry
  def add_song(song)
    self.songs << song  # Why self?
    song.artist = self # I don't understand what this line does
    @@song_count += 1
  end

  def add_song_by_name(name)   #how does this method work, step by step
    song = Song.new(name)    #creating new song in a variable
    self.songs << song    #why do we add here
    song.artist = self   #again, don't understand
    @@song_count += 1
  end

  def songs
    # Let's write an instance method, #songs,
    # that we can call on an individual artist to return
    # the list of songs that the artist has.
    Song.all.select do |song|
      song.artist == self
    end
    # {|song| song.artist == self}  #this I don't understand
  end

  def self.song_count
      Song.all.count #why is it not working?
  end
end


beatles = Artist.new("The Beatles")
