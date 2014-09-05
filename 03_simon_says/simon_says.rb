# 03. Simon Says

def echo(arg)
	arg
end

def shout(arg)
	arg.upcase
end

def repeat(word, num=2)
	num.times.collect{word}.join(' ')
end

def start_of_word(word, pos)
	word[0...pos]
end

def first_word(arg)
	arg.split(' ')[0]
end

def titleize(arg)
	words = arg.split(' ').map do |word|
		little_words = %w{and over the}
		little_words.include?(word) ? word : word.capitalize
	end
	words[0].capitalize!
	words.join(' ')
end