songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "- I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def play(songs)
  num_list = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

  puts "Please enter a song name or number: "
  response = gets.chomp
  if num_list.include?(response)
    puts "Playing #{songs[response.to_i-1]}"
  elsif songs.include?(response)
    puts "Playing #{response}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |item, index|
    puts "#{index+1}. #{item}"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  while true
    puts "Please enter a command: "
    response = gets.chomp
      case response
      when "list" then list(songs)
      when "play" then play(songs)
      when "help" then help
      when "exit" then break
      end
  end
  exit_jukebox
end
