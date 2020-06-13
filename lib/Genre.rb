class Genre
  attr_accessor :name, :song, :artist
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.save
    @@all << self
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(genre)
    genre = self.new(genre)
    self.save
    genre
  end
end
