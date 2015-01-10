def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, times = 2)
	string + (" " + string)*(times-1)
end

def start_of_word(string, chars)
	string[0..(chars-1)]
end

def first_word(string)
	string.split(' ')[0]
end

def titleize(title)
	words = title.split(' ')
	words.map do |word|
		word.capitalize! unless ["and", "or", "in", "the", "of", "is", "a", "over"].include? (word)
	end
	words[0].capitalize!
	words.join(" ")
end