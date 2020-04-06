class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    save
  end
  
  def self.all
    @all
  end
  
  def artist
    @artist
  end
  
  def artist_name
      @artist.name
  end
  
  
end