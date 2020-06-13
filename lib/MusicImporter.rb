class MusicImporter
  attr_accessor :song, :artist, :genre, :path

  def initialize(path)
    @path = path
  end 
end
