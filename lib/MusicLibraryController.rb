class MusicLibraryController
  attr_accessor :path, :musicimporter, :song, :artist, :genre

  def initialize(path="./db/mp3s")
    @path = path
    MusicImporter.new(path) << path


  end
end
