class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title, author=nil)  #why artist = nil
    @title = title
    @author = author
    @@all << self         #why adding like this, why not just save
  end

  def author_name
    if self.author   #don't understand these two lines
      self.author.name
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
