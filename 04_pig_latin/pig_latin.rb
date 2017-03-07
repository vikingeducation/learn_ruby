def translate(str)
	vowels = %w(a e i o u)
	words = str.split(" ")
	translated_array = []
	words.each do |word|
		if vowels.include?(word[0])
			translated_array << word + "ay"
			translated_array.join("")
		end
	end
	
end

