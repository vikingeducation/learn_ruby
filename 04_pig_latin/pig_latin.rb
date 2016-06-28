def translate(word)
	vowels = ["a", "e", "i", "o", "u"]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	word_array = word.split(" ")
	word_array.each do |word|
		if vowels.include?(word[0]) == false
			if word[0..1] == "qu"
				word << word.slice!(0..1)
			elsif word[1..2] == "qu" && consonants.include?(word[0]) == true
				word << word.slice!(0..2)
			elsif consonants.include?(word[0]) == true && consonants.include?(word[1]) == true && consonants.include?(word[2]) == true
				word << word.slice!(0..2)
			elsif consonants.include?(word[0]) == true && consonants.include?(word[1]) == true
				word << word.slice!(0..1)
			else
				word << word.slice!(0)
			end
		end
	word << "ay"
	end
	word_array.join(" ")
end