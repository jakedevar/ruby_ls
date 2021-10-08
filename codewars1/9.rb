=begin
------------------- Problem ---------------------
input a string
output a string
return a string where the first and last chracters remain 
and the interior is sorted alphabetically

punctuation should remain the same
------------------- Examples --------------------

------------------- Data ------------------------

------------------- Algorithm -------------------

=end

def scramble_words(words)
  words.gsub(/(?<=\w)([^ ]+)(?=\w)/)#{|a| cs = a.scan(/\w/).sort; a.gsub(/\w/){cs.shift}}
end

p scramble_words('professionals') #== 'paefilnoorsss'

p scramble_words('i') #== 'i'

p scramble_words('') #== ''

p scramble_words('me') #== 'me'

p scramble_words('you') #== 'you'

p scramble_words('card-carrying') #== 'caac-dinrrryg'

p scramble_words("shan't") #== "sahn't"

p scramble_words('-dcba') #== '-dbca'

p scramble_words('dcba.') #== 'dbca.'