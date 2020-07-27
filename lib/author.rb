class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []   #ask why do we need to keep songs here when we have it in Song.all
  end

  def add_post(post)
    self.posts << post  # Why self?
    post.author = self # I don't understand what this line does
  end

  def add_post_by_title(name)   #instance method
    post = Post.new(name)    #creating new song in a variable
    self.posts << post    #why do we add here
    post.author = self   #again, don't understand
  end

  def posts
    Post.all.select {|post| post.author == self}  #this I don't understand

  end

  def self.post_count
      Post.all.count#why is it not working?
  end

end
