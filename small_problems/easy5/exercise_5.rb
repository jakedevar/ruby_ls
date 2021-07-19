#exercise_5.rb
ALPHABET = ('a'..'z').to_a

def cleanup(string)
  char_storage = []
  
  string.chars.each do |char|
  if ALPHABET.include?(char)
    char_storage << char
  else
    char_storage << ' ' unless char_storage.last == ' '
  end
  end
end

p cleanup("---what's my +*& line?") == ' what s my line '