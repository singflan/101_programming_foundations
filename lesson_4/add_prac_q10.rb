munsters = {
  'Herman' => { 'age' => 32, 'gender' => 'male'},
  'Lily' => { 'age' => 30, 'gender' => 'female'},
  'Grandpa' => { 'age' => 402, 'gender' => 'male'},
  'Eddie' => { 'age' => 10, 'gender' => 'male' },
  'Marilyn' => { 'age' => 23, 'gender' => 'female'}
}

munsters.values.each do |data|
  if data['age'] < 18
    data['age_group'] = 'kid'
  elsif data['age'] > 64
    data['age_group'] = 'senior'
  else
    data['age_group'] = 'adult'
  end
end

p munsters

      
