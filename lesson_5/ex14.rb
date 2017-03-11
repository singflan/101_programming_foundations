hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |_, values|
  if values[:type] == 'fruit'
    values[:colors].each do |color|
      color.capitalize!
    end
  elsif values[:type] == 'vegetable'
    values[:size].upcase
  end
end
puts hsh
