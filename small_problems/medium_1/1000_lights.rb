
def toggle_light()

end

def toggle_light_program(hash)
	new_hash = hash
	index = 1
	loop do 
		new_hash.each do |switch_num, toggle|
			if switch_num % index == 0
				if toggle == 'off'
					new_hash[switch_num] = 'on'
				else
					new_hash[switch_num] = 'off'
				end
			end
			new_hash
		end
	index += 1
	break if index > hash.size
	end 
	new_hash
end

def on_lights(hash)
	hash.keys.select { |light_num| hash[light_num] == 'on'  }
end

lights_hsh = {}
1.upto(1000) { |number| lights_hsh[number] = "off" }
lights_hsh
toggle_light_program(lights_hsh)
p on_lights(lights_hsh)