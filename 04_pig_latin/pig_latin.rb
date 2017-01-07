def translate word
	words = word.split(" ")
	result = []
	words.each do |word|

		index = word.index(/[aeuio]/)
		if word[0..2] =~ /qu/
			index = word.index("u")+ 1
		end
		beginning = word[0...index] 
		word[0...index] = ""
		result << word + beginning + "ay"
	end
	result.join(" ")
end