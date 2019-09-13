class Post 
<<<<<<< HEAD
  attr_accessor :title, :author
  @@all = []
  
  def initialize(title)
    @@all << self
    @title = title
  end
  
  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end
  
  def self.all
    @@all
  end
  
=======
  attr_accessor :name, :title
>>>>>>> 994f29327147820d656d13937320fcfbd679b06a
end