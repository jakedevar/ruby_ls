# exercise_2.rb
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

it will return 3

i tottally misread the problem but looking at it now
count treats the blocks return value as an integer
we can find out by going to the docs and looking at the key
