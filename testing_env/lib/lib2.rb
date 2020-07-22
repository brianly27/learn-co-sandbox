class Artist
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
  
  def add_song(song)  #reassigns a song's artist to this object
    song.artist = self 
  end
  
  def songs #iterates through Songs.all and selects for this object
    Song.all.select do |song| 
      song.artist == self
    end
  end

  
end