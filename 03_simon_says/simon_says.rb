def echo(say)
	say
end

def shout(say)
	echo(say).upcase
end

def repeat(say, num = 2)
	result = []
	num.times do
		result << say
	end
	result.join(" ")
end

def start_of_word(word, num)
	word.slice(0, num)
end

def first_word(word)
	word.split(" ")[0]
end

def titleize(string)
	no_upcase = ["and", "over", "the"]
	string = string.split(" ")
	string[0][0] = string[0][0].upcase #special case for the first 'The'
	string.map {|word| word[0] = word[0].upcase unless no_upcase.include?(word)}
	string.join(" ")
end