def time_of_day(int)
  hours, minutes = int.divmod(60)
  hours = 0 if hours.abs == 24
  hours = (hours + 24).abs if hours < 0
  hours /= 24 if hours > 24
  format("%02d:%02d", hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
