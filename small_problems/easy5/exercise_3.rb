#exercise_3.rb
def after_midnight(minutes)
  if minutes[0..1].to_i != 0 || 24
  hours_to_minutes = minutes[0..1].to_i
  (hours_to_minutes * 60) + minutes[3..4].to_i
  else 
    return 0
  end
end

def before_midnight(minutes)
  if minutes[0..1].to_i != 0 || minutes[0..1].to_i != 24
    hours_to_minutes = minutes[0..1].to_i
    subtract = (hours_to_minutes * 60) + minutes[3..4].to_i
    result = (1440 - subtract)
  else 
    return 0
  end
end



p after_midnight('00:00') == 0
p before_midnight('00:00') == 0      
p after_midnight('12:34') == 754    
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0