class Artist
  attr_accessor :name, :song, :genre
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song
    Song.artist == self
  end

  def songs
    @songs
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

  def self.create(artist)
    artist = self.new(artist)
    artist.save
    artist
  end
end
