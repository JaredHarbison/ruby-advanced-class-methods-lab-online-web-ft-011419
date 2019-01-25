class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
  
  def self.create
    song = self.new 
    @@all << song
    song
  end 

  def save
    self.class.all << self
  end
  
  def self.destroy_all 
    self.all.clear
  end 
  
  def self.new_by_name(title)
    song = self.new
    song.name = title 
    song 
  end 
  
  def self.create_by_name(title)
    song = self.new 
    song.name = title 
    @@all << song 
    song 
  end 
  
  def self.find_by_name(title)
    result = self.all.detect {|song| song.name == title}
    result
  end 
  
   def self.find_or_create_by_name(title)
    result = self.find_by_name(title)
    if result
      result
    else
      self.create_by_name(title)
    end
  end
  
  def self.alphabetical
    sorted = self.all.sort_by {|song| song.name}
    sorted
  end 
  
  def self.new_from_filename(filename)
    song_array = filename.split(" - ")
    song_array[1] = song_array[1].chomp(".mp3")
    song = self.new 
    song_name = song_array[1]
    song_title
  
end


