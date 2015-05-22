def echo(phrase)
	phrase
end

def shout(phrase)
	phrase.upcase
end

def repeat(phrase, reps=2)
	out = phrase + ' ' + phrase
	a = (reps - 2)
	a.times { out << (' ' + phrase.to_s)}
	out
end

def start_of_word(phrase, letters)
	phrase[0,letters]
end

def first_word(phrase)
	phrase.split(' ')[0]
end

def titleize(phrase)
	words = phrase.split(' ')
	little_words = ['the', 'and', 'over']
	output = words.map.with_index do |element, index|
		if (index > 0 && little_words.include?(element)) 
			element
		else
			element.capitalize
		end
	end
	output.join(' ')
end

