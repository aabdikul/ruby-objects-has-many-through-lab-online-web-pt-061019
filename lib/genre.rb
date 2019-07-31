class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |object|
    object.genre == self
    end
  end

  def artists
    Song.all.collect do |object|
      object.artist
    end
  end

end
