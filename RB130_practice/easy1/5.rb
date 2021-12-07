words = "Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu"

ALPHA = ('a'..'z').to_a

# def rot13(words)\
# 	str = ''
# 	new_words = words.gsub("\n", ' ')
# 	new_words.downcase.chars.each do |chr|
# 		str << chr if chr == ' ' || chr == "-"
# 		next if chr == ' ' || chr == "-"
# 		num = ALPHA.index(chr) - 13
# 		str << ALPHA[num]
# 	end
# 	str.split.map(&:capitalize).join(' ')
# end

def rot13(words)
	yes = words.each_char.reduce('') {|str, char| str + decipher_char(char).chr}.gsub("\n", ' ') 
end

def decipher_char(chr)
	case chr 
	when 'a'..'m', 'A'..'M' then chr.ord + 13 
	when 'n'..'z', 'N'..'Z' then chr.ord - 13
	else chr.ord 
	end
end

p rot13(words)