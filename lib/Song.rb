class Song
  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name, artist=nil, genre=nil)
    @name = name
    self.artist=(artist) if artist !=nil
    self.genre=(genre) if genre !=nil
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.detect {|song| song.name == name}
  end

  def genre
    @genre
  end

  def genre=(genre)
    @genre = genre
    genre.songs << self unless genre.songs.include?(self)
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
