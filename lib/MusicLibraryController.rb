class MusicLibraryController
  attr_accessor :path, :musicimporter

  def initialize(path="./db/mp3s")
    @path = path
    @MusicImporter << path
  end
end
