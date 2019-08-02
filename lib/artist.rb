class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
  end
  
  def self.all 
    @@all = all 
  end
  
end