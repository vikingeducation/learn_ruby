def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, n = 2)
	new_string = (string + " ") * n
	new_string.strip!
end

def start_of_word(string, n)
	letters = string.split ''
	letters[0..(n-1)].join ''
end

def first_word(string)
	words = string.split ' '
	words[0]
end

def titleize(string)
	words = string.split ' '
	little_words = ["and", "the", "over"]
	if little_words.include? words[0]
		words[0][0] = words[0][0].upcase
	end
	words.each do |word|
		if little_words.include? word
			next
		else
			word[0] = word[0].upcase
		end
	end
	words.join ' '
end