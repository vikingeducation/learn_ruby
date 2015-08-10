def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, n=nil)
	result = []
	if n 
		(1..n).each {result << string}
	else
		result = [string, string]
	end
	result.join(' ')
end

def start_of_word(string, n)
	string[0, n]
end

def first_word(string)
	string.split(' ')[0]
end

def titleize(string)
	little_words = [
		'and',
		'the',
		'over'
	]
	string.split(' ').map.with_index {|word, i| (little_words.include?(word) && i > 0) ? word : word.capitalize }.join(' ')
end