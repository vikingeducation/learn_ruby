def translate(words)
	result = []

	words.split.each do |word|

		if word[0].match /[aeiou]/
			result << word + 'ay'
		elsif word.match /^[qu]+/
			result << word[2..-1] + word[0..1] + 'ay'
		else
			cons = word.index(/[aeiou]/)
			if word[cons-1..cons] == 'qu'
				cons += 1
			end
			result << word[cons..-1] +  word[0..cons-1] + 'ay'
		end
	end
	p result.join(' ')
end
