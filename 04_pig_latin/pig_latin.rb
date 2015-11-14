def translate(string)
	vowels = ['a', 'e', 'i', 'o', 'u']
	result = []

	string.split(' ').each do |word|
		word = word.split('')

		if vowels.include?(word[0])
			word << "ay"
		else
			until vowels.include?(word[0])
				word << word[0]
				word << word[1] if word[0] == 'q' && word[1] == 'u'
				word.shift if word[0] == 'q' && word[1] == 'u'
				word.shift
			end
			word << "ay"
		end
		result << word.join('')
	end
 	result.join(' ')
end