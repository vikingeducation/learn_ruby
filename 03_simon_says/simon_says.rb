def echo(x)
	x
end

def shout(x)
	x.upcase
end

# def repeat(x, times = 2)
# 	([x] * times).join(" ") #why does array [x] === "hello hello hello"?
# end

def repeat(x, times = 2)
	([x] * times).join(' ')
end

def start_of_word(s, n)
	s[0...n]
end

def first_word(s)
	s.split(" ").first
end

def titleize(t)
	little_words = ['and', 'the', 'over']
	t.capitalize.split(" ").map { |word|
		if little_words.include?(word)
			word
		else
			word.capitalize
		end
	}.join(" ")

end