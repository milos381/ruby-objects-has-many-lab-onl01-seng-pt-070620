class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []   #ask why do we need to keep songs here when we have it in Song.all
  end

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
    Song.all.select {|song| song.artist == self}  #this I don't understand

  end

  def self.song_count
    @@song_count  #why is it not working?
  end
end
