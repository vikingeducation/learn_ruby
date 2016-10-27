def translate(string)
	translation = ''
	vowels = ["a", "e", "i", "o", "u"]
	words = string.split ' '
	words.each do |word|
		letters = word.split ''
		until vowels.include? letters[0]
			letter = letters.shift
			letters.push letter
		end
		#if next letter is q, checks end of word for u and shifts it if necessary
		if letters[0] == "u" && letters[-1] == "q"
			letter = letters.shift
			letters.push letter
		end
		letters.push "ay"
		translation += (letters.join '') + ' '
	end
	translation.strip!
end
translate("quiet")