
def create_uuid
  possible_digits = []
  (0..9).each {|digit| possible_digits << digit.to_s }
  ('a'..'f').each {|letter| possible_digits << letter }

  uuid = ''
  8.times { uuid << possible_digits.sample }
  uuid << '-'
  4.times { uuid << possible_digits.sample }
  uuid << '-'
  4.times { uuid << possible_digits.sample }
  uuid << '-'
  4.times { uuid << possible_digits.sample }
  uuid << '-'
  12.times { uuid << possible_digits.sample }
  uuid 
end

puts create_uuid
