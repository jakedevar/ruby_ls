DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE
# def dms(int)
#   if int % 1 == 0
#     minutes = 0
#     seconds = 0
#     format("%01d#{DEGREE}%02d'%02d\"", int, minutes, seconds)
#   else
#     angles, holder_minutes = int.to_s.split('.')
#     angles
#     split = (holder_minutes.insert(0,'.').to_f * 60).to_s.split('.')
#     minutes = split[0].insert(0, '.').to_s.delete_prefix('.')
#     seconds = (split[1].insert(0, '.').to_f * 60).to_s.to_i.to_s
#     format("%02d#{DEGREE}%02d'%02d\"", angles, minutes, seconds)
#   end
# end
# after looking at LS solution (it ended up just being the LS solution lol)

def dms(int)
  total_seconds = (int * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  puts format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

dms(30) #== %(30°00'00")
dms(76.73) #== %(76°43'48")
dms(254.6) #== %(254°36'00")
dms(93.034773) #== %(93°02'05")
dms(0) #== %(0°00'00")
dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")

# ha fucking did that shit!!!!!!!!!!! hell ya!!!!! this took me probaly almost an hour and I didnt even look at the soutions tab once!!!!!
