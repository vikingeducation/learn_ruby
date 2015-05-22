def translate(phrase)
	translated = []
	vowels = ['a','e','i','o','u']
	words = phrase.split(' ')
	words.each do |word|
		first_letter = word.split(//)[0]
		first_vowel_index = word.index(/[aeiou]/)
		second_vowel_index = word.index(/[aeiou]/, first_vowel_index + 1)
		#exception for u after q
		if first_vowel_index != 0
			if word[first_vowel_index] == 'u' && word[first_vowel_index - 1] == 'q'
				split_index = second_vowel_index
			else
				split_index = first_vowel_index
			end
		else
			split_index = first_vowel_index
		end

		if split_index == 0
			output = word + 'ay'
		else
			output = word[split_index..word.length] + word[0..(split_index-1)] + 'ay'
		end
		translated.push(output)
	end
	
	translated.join(' ')
end