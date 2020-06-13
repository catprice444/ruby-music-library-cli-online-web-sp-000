class Genre
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

  def self.create(genre)
    genre = self.new(genre)
    self.save
    song
  end
end
