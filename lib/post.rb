class Post
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  
  def author
    @author
  end
  
  def author_name
      @author.name
  end
  
  def save
    @@all << self
  end
end