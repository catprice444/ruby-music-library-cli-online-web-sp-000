class Song
  extend Concerns::Findable
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

  def genre
    @genre
  end

  def self.new_from_filename(filename)
    array = filename.split(" - ")
    artist = array[0]
    name = array[1]
    genre = array[2].pop(".mp3")

  end
  # initializes a song based on the passed-in filename
  #   invokes the appropriate Findable methods so as to avoid duplicating objects

  #   initializes and saves a song based on the passed-in filename
    # invokes .new_from_filename instead of re-coding the same functionality

  def self.create_from_filename(filename)
  end

  def genre=(genre)
    @genre = genre
    genre.songs << self unless genre.songs.include?(self)
  end

  def artist
    @artist
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
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
