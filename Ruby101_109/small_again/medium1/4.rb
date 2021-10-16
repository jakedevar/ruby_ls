=begin
------------------- Problem ---------------------
imagine there are a bank of lights from 1-num
at first every light is off
then you go down the row and turn them all on
then you flip the switch on all even numbers 
then on all numbers divisible by 3

you do this for x amount of times 

  clarifying questions 
  1. even if i did it x amount of times the result would be the same at the first time or the 100th time
------------------- Examples --------------------
5 lights with 5 reps 
10 lights with 10 reps
------------------- Data ------------------------
an array will work perfectly fine for this

------------------- Algorithm -------------------
essentially i am going to map destructivley n amount of times 
with decending arr maps with the logic inside 

arr = create the array with (1..num) and map that array with false
num.times do 
  arr.map! with index 

  then we call map with index on array because we are going to make it index + 1 if true  select on the array and return the digits
end

=end

def lights(int)
  arr = (1..int).to_a.map!{|ele| ele = false }
  int.times do |i|
    arr.map!.with_index {|ele, j| ele = !ele if (j+1) % (i+1) == 0; ele}
  end
  arr.map.with_index {|ele, i| ele = i+1 if ele == true}.select {|ele| ele == ele.to_i}
end
p lights(5) #== [1, 4]

 p lights(10)