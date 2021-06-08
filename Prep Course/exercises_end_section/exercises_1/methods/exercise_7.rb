#exercise_7.rb

daylight = [true, false].sample

def time_of_day(boolean)
  if boolean == true
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

time_of_day(daylight)

#solution I liked from comments

=begin
def time_of_day
  daylifht = [true, false].sample
  if daylight == true
    puts "its's daytime!"
  else
    puts "It's nighttime!"
  end
end