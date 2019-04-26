def nyc_pigeon_organizer(data)
	#create new hash to hold data
	new_hash ={}
	
	#create first-level keys of new hash
	data[:gender].each do |gender, bird|
		bird.each {|name| new_hash[name] = {}}
	end	
	
	#populate new hash with data
	new_hash.each do |bird, stats|
		data.each do |attribute, value|
			value.each do |detail, name|
				if name.include?(bird)
					new_hash[bird][attribute] ||= []
					new_hash[bird][attribute].push(detail.to_s)
				end	
			end	
			
		end	
	end	
	
	new_hash
end