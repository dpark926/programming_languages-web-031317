def reformat_languages(languages)
  new_hash = {}

	languages.each do |style, obj|		#LEVEL 1
		obj.each do |lang, type_obj|		#LEVEL 2
# 			type_obj.each do |type, value|		#LEVEL 3
# 				if new_hash[lang]
# 					new_hash[lang] << value2
# 				else
# 					new_hash[lang] = value2
# 				end
# 			end

			new_hash[lang] = type_obj

# 			if	new_hash[lang][:style] == [style]
# 				new_hash[lang][:style] << style
# 				puts "does exist"
# 			else
# 				new_hash[lang][:style] = [style]
# 				puts "doesn't exist"
# # 				puts "happy"
# 			end

# 			puts new_hash[lang]
		end
	end

	new_hash.each do |key, value|
		new_hash[key][:style] = []

		languages.each do |key2, value2|
			value2.each do |key3, value3|
				if key3 == key
					new_hash[key][:style] << key2
				end
			end
# 			puts key2.to_s
		end

# 		puts languages.keys
# 		puts key.class

	end

	return new_hash
end
