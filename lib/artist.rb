class Artist
<<<<<<< HEAD
  attr_accessor :name, :songs
  @@song_count = 0
=======
  attr_accessor :name, :song, :songs
  @@songs = []
>>>>>>> 994f29327147820d656d13937320fcfbd679b06a
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
<<<<<<< HEAD
    song.artist = self
    @@song_count += 1
  end
  
  def songs
    Song.all.select{|song| song.artist == self}
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
    @@song_count += 1
  end
  
  def self.song_count
    @@song_count
=======
    song = Song.new
    self.song = song
    self.songs << song
    @@songs << song
  end
  
  def add_song_by_name(song_name)
    song = Song.new
    song.name = song_name
    self.song = song
    self.songs << song
    @@songs << song
  end
  
  def songs
    @songs
  end
  
  def self.song_count
    @@songs.length
>>>>>>> 994f29327147820d656d13937320fcfbd679b06a
  end
  
end