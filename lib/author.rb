class Author
<<<<<<< HEAD
  attr_accessor :name, :posts
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    post.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(title)
    title = Post.new(title)
    add_post(title)
    @@post_count += 1
  end
  
  def posts
    Post.all.select{|post| post.author = self}
  end
  
  def self.post_count
    @@post_count
  end
=======
  @@posts = []
  
>>>>>>> 994f29327147820d656d13937320fcfbd679b06a
  
end