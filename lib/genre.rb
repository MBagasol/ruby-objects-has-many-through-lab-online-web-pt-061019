
class Genre 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    self.class.all << self
  end
  
  def self.all 
    @@all 
  end
  
  def songs
    # iterate through all songs created and finds songs with that self.genre
    Song.all.select {|song| song.genre == self}
  end
  
  def artists
    songs.map {|song| song.artist}
  end
end