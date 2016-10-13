def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, times=2)
	arr = []
	times.times {arr << word}
	return arr.join(' ')
end

def start_of_word(word, count)
	desired = []
	desired << word.scan(/\w/).first(count)
	desired.join("")
end

def first_word(sen)
	first = sen.split
	return first[0]
end

def titleize(title)
	fixed = []
	stopwords = %w{the a by on for of are with over but and to the my has some in is}
	title = title.capitalize.scan(/\w+/)
	title.each do |word| 
		if stopwords.include?(word)
			fixed << word
		else
			fixed << word.capitalize 
		end
	end
	return fixed.join(' ')
end