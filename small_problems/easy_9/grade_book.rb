def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3).to_f / 3
  case average
  when 90..100 then 'A'
  when 80...90 then 'B'
  when 70...80 then 'C'
  when 60...70 then 'D'
  when 0...60 then 'F'
  else puts "Average grade invalide; outside of permitted range"
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
