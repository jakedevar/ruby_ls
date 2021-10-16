#exercise_16.rb
#It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

#Write a method that returns one UUID when called with no parameters.

def uuid 
  first = Random.urandom(8)
  puts first
end

uuid

#ithought this would be the answer but i was very wrong. I feel like im so behind if this is the answer 
def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end