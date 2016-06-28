def translate str
	vowels = %w[a e i o u]
	consonants = Array('a'..'z') - vowels
	words = str.split(' ')
	words.each do |word|
		if %w[a e i o u].include?(word[0])
			word << "ay"
		elsif word[0..2] == "thr" || word[0..2] == "sch" 
			word << word[0..2]
			3.times {word[0] = ''}
			word << 'ay'
		elsif word[0..1] == "ch" || word[0..1] == "qu" || word[0..1] == "th" || word[0..1] == "br"
			word << word[0,2] 
			word[0] = ''
			word[0] = ''
			word << 'ay'
		elsif consonants.include?(word[0]) && word[1..2] == "qu"
			word << word[0..2]
			3.times {word[0] = ''}
			word << 'ay'
		else 
			first_letter = word[0]
			word[0] = ''
			word << first_letter 
			word << "ay"
		end	
	end
	words.join(' ')
end