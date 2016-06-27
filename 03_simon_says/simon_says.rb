def echo(str) 
	"#{str}"
end

def shout(str)
	"#{str.upcase}"
end

def repeat(str, n = 2)
	"#{((str + " ") * n).chop}"
end

def start_of_word(word, n)
	word[0, n]
end

def first_word(str)
	str.split(' ')[0]
end

def titleize(str)
	capitalized = str.split(' ').each_with_index do |word, index|
		#binding.pry
		word[0] = word[0].upcase if index == 0
		word[0] = word[0].upcase unless ['and', 'or', 'the', 'over'].include?(word)
	end
	capitalized.join(' ')
end