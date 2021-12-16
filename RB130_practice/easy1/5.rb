ALPHA = ('a'..'z').to_a

def names 
names = File.open('names.txt', 'r')
puts yield(names.read) 
names.close 
end

names do |txt| 
	txt.split.map do |name|
		name.chars.map {|chr| next if chr == ' ' || chr == '-' ; ALPHA[ALPHA.index(chr.downcase) - 13]}.join.capitalize
	end 
end