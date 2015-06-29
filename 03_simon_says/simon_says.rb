def echo(input)
	input
end

def shout(input)
	input.upcase
end

def repeat(input, repeat = 2)
	count = 1
	result = input.dup
	while count < repeat
		result << " #{input}"
	 	count += 1
	end
	result
end

def start_of_word(word, num_letters)
	word[0...num_letters]
end

def first_word(input)
	result = input.split " "
	result[0]
end

def titleize(title)
	title_a = title.split " "
	count = 0
	while count < title_a.length
		if count == 0
			title_a[count].capitalize!
		elsif title_a[count].length > 3 && title_a[count] != "over"
			title_a[count].capitalize!
		end
		count += 1
	end
	return title_a.join(" ")
end