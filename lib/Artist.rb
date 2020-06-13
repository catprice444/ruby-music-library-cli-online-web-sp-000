class Artist
  attr_accessor :name, :song, :genre
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    if Song.artist == nil
      Song.artist == self
    else
      nil
    end
    if @songs.include?(song)
      nil 
    else 
      @songs << song
    end 
    song
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
