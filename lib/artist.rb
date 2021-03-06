require_relative "./concerns/findable.rb"

class Artist
  
  extend Concerns::Findable
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end
  
  def add_song(song)
    song.artist = self if !song.artist
    self.songs << song if !self.songs.include?(song)
  end
  
  def self.destroy_all
    self.all.clear
  end
  
  def self.create(name)
    self.new(name).tap {|i| i.save}
  end
  
  def genres
    songs.map {|song| song.genre}.uniq
  end
  
end