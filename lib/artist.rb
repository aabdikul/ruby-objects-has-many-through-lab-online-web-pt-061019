class Artist

  attr_accessor :name

  @@all = []

  def initialize(name_input)
    @name = name_input
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |object|
      object.artist == self #pulling drake as the artist name as opposed to pulling "Drake". drake will match the Artist name in this class.
    end
  end

  def new_song(name,genre)
    Song.new(name,self,genre)
  end

  def genres
    Song.all.collect do |object|
      object.genre
    end
  end

end
