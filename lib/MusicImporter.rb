class MusicImporter
  attr_accessor :song, :artist, :genre, :path

  def initialize(path)
    @path = path
  end

 def files
   Dir.entries(@path).select! {|file| file.end_with?(".mp3")}
 end

 def import
 end 

end
