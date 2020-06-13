class Song
  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name, artist= nil, genre= nil)
    @name = name
    
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(song)
    song = self.new(song)
    song.save
    song
  end
end
