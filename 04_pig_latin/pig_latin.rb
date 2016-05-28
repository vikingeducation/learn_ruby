def translate(str)
	str = str.downcase.split(' ')
	str = str.map do |word|
		if word[0] == 'a' || word[0] == 'e'
			word << "ay"
		elsif word[0..2] == 'thr' || word[0..2] == 'sch' || word[0..2] == 'squ'
			x = word.slice! 0..2
			word << x + 'ay'
		elsif word[0..1] == 'ch' || word[0..1] == 'qu' || word[0..1] == 'th' || word[0..1] == 'br'
			x = word.slice! 0..1
			word << x + 'ay'
		else 
			x = word.slice! 0
			word << x + 'ay'
		end
	end
	str.join(' ')
end