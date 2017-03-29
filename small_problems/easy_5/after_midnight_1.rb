def time_of_day(minutes_from_midnight)
  total_hours_rounded, minutes_extra = minutes_from_midnight.divmod(60)
  days_beyond_current = total_hours_rounded / 24
  total_hours_for_clock = total_hours_rounded - 24 * days_beyond_current

  "#{sprintf('%02d', total_hours_for_clock)}:#{sprintf('%02d', minutes_extra)}"
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"