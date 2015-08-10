def translate(string)
	string = string.split(' ')
	vowels = "aeiou"
	translated_sentence = []
	string.each do |word|
		translated_word = ''
		first_syllable = ''
		done_first_syllable = false
		last_char = nil
		word.chars.each_with_index do |char, i|
			if vowels =~ /#{char}/ && "#{last_char}#{char}" != "qu"
				done_first_syllable = true
			end
			if ! done_first_syllable
				first_syllable += char
			else
				translated_word += char
			end
			last_char = char
		end
		translated_sentence << translated_word + first_syllable + "ay"
	end
	translated_sentence.join(' ')
end