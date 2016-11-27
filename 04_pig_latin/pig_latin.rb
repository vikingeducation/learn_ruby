def translate(original_text)
	vowels = ["a", "e", "i", "o", "u"]
	original_array = original_text.split(" ")
	pig_array = []

	original_array.each do |word|
		consonants = ""
		word.each_char do |char|
			if vowels.include?(char)
				unless char == "u" && consonants[consonants.length-1] == "q"
					break
				end
			end
			consonants += char
		end
		root = word[consonants.length..word.length]
		suffix = consonants + "ay"
		pig_word = root + suffix

		pig_array << pig_word
	end

	pig_array.join(" ")
end