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
  
  def artist
    @artist
  end
  
  def artist_name
      if @artist.name.nil?
        nil
      else
        @artist.name
      end
  end
  
  def save
    @@all << self
  end
end