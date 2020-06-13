class Song
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    # self.save
  end

  def self.all
    @@all
  end

  def self.save
    @@all << self
  end

  def destroy_all
    @@all.clear
  end

  def create

  end
end
