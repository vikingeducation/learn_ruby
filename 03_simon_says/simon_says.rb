def echo(arg)
	"#{arg}"
end

def shout(arg)
	"#{arg}".upcase
end

def repeat(arg, num = 2)
	if num > 2 
		("#{arg} " * num).chomp(' ')
	else
		"#{arg} #{arg}"
	end
end

def start_of_word(arg, num)
	return arg[0, num]
end

def first_word(arg)
	arg.split(' ')[0]
end

def titleize(phrase)
	little_words = ["and", "the", "over"]
	words = phrase.split
	words.map! do |word| 
		if little_words.include?(word)
			word
		else
			word.capitalize
		end
	end
  words[0] = words.first.capitalize
  words.join(" ")
end