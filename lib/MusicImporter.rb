class MusicImporter
  attr_accessor :song, :artist, :genre, :path

  def initialize(path)
    @path = path
  end

 def files
   Dir.entries(@path).select! {|file| file.end_with?(".mp3")}
  #  loads all the MP3 files in the path directory
    # normalizes the filename to just the MP3 filename with no path
 end


end
