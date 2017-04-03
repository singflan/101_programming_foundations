def time_of_day(minutes)
  hour = minutes / 60
  num_times_over_24 = hour / 24
  hour = hour - (24 * leftover) # this is to take out extra days

  puts "\"#{sprintf('%02d', hour)}: #{minutes}"                                      bjk45

end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"
