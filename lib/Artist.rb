class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    # self.save
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
    artist = self.new(song)
    self.save
    song
  end
end
