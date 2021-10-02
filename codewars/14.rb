def song_decoder(string)
  string.gsub(/WUB/, ' ').split(' ').join(' ')
end

p song_decoder("JKDWUBWBIRAQKFWUBYEWUBWV") #== "A B C"

p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C"

p song_decoder("WUBAWUBBWUBCWUB") == "A B C"