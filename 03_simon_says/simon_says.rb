def echo(input)
	input
end

def shout(input)
	input.upcase
end

def repeat(input, times=2)
	output = input

	(times-1).times do
		output += " #{input}"
	end

	output
end

def start_of_word(word, letters)
	start_string = ""

	letters.times do |letter|
		start_string += word[letter]
	end

	start_string
end

def first_word(words)
	words.split(" ")[0]
end

def titleize(title)
	little_words = ["a", "an", "the", "and", "but", "or", "for", "nor", "on", "over", "at", "to", "from", "by"]
	upcase_title = []
	title_array = title.split(" ")
	title_array.each_with_index do |word, index|
		if (index != 0 && index != title_array.length-1) && little_words.include?(word)
			upcase_title << word
		else
			word[0] = word[0].upcase!
			upcase_title << word
		end
	end
	upcase_title.join(" ")
end