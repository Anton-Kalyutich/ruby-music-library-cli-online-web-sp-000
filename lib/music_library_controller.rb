class MusicLibraryController
  
  def initialize(path = "./db/mp3s/")
    MusicImporter.new(path)
  end
  
  def call
    puts "Welcome to your music library!"
    user_input = ""
    until user_input == "exit" do
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      expect($stdout).to receive(:puts).with("To play a song, enter 'play song'.")
      expect($stdout).to receive(:puts).with("To quit, type 'exit'.")
      expect($stdout).to receive(:puts).with("What would you like to do?")
    end
    user_input = gets.chomp
  end
  
end