MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 24 * 60

def after_midnight(string)
  time_arr = string.split(':')
  total_minutes = time_arr[0].to_i * MINUTES_PER_HOUR + time_arr[1].to_i
  if total_minutes == MINUTES_PER_DAY
    total_minutes = 0
  end
  total_minutes
end

def before_midnight(string)
  time_arr = string.split(':')
  total_minutes = MINUTES_PER_DAY - (time_arr[0].to_i * MINUTES_PER_HOUR + time_arr[1].to_i)
  if total_minutes == MINUTES_PER_DAY
    total_minutes = 0
  end
  total_minutes
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0