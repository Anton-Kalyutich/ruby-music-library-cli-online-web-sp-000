class MusicLibraryController
  
  def initialize(path = "./db/mp3s/")
    MusicImporter.new(path)
  end
  
  def call
    puts "Welcome to your music library!"
    user_input = gets.chomp
  end
  
end