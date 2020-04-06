class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  

  def artist_name
      if self.artist.name.nil?
        nil
      else
        self.artist.name
      end
  end
  
  def save
    @@all << self
  end
  
end