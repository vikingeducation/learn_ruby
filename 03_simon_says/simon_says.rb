def echo(x)
	x
end

def shout(x)
	x.upcase
end

def repeat(word, n=2)
	(word.split* n).join(" ")
end

def start_of_word(s, n)
	s[0...n]
end

def first_word(word)
	word.split[0]
end

def titleize(word)
	word.capitalize!
	words = word.split(" ")
	words.each do |x|
		x.capitalize! unless ["and", "over", "the"].include? x
	end
	words.join(" ")
end
