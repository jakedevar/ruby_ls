# exercise_3.rb

s = 'abc def ghi,jkl mno pqr,stu vwx yz'

puts s.split.inspect # return the string with groups of chars "split"
puts s.split(',').inspect # will return all of the groups of letters with "" around them and also the ,'s with " around them"
# incorrect the above will return quotes around the letters before the comma

puts s.split(',', 2).inspect
# will print with quotes around the first group of letters up untill the first , then it will group the rest
# Incorrect sort of, it did put quotes around the rest but i meant it would quote the first groups normally not all together like it did
