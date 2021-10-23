def solve(s)
  res = []
  chars = s.chars
  chars.each_with_index do |_chr, ind1|
    chars.each_with_index do |_chr, ind2|
      res << chars[ind1..ind2].join.to_i.odd?
    end
  end
  res # .compact.size
end

p solve("1341") #== 7

p solve("1357") #== 10

p solve("13471") #== 12

p solve("134721") #== 13

p solve("1347231") #== 20

p solve("13472315") #== 28
