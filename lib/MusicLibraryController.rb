class MusicLibraryController
  attr_accessor :path

  def initialize(path)
    @path = path
    @MusicImporter << path
  end
end
