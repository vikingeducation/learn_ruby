def echo(input)
	return input
end

def shout(input)
	return input.upcase
end

def repeat(input, number_times= 2)
	sentence = ""
	number_times.times do
		sentence << input << " "
	end
	return sentence.strip
end

def start_of_word(input, where)
	return input[0..where - 1]
end

def first_word(input)
	return input.split(" ").first
end

def titleize(input)
	sentence = ""
	little_words = ["and", "the", "over"]
	sentence << input.split(" ")[0].capitalize + " "
	input.split(" ")[1..-1].each do |word|
		if little_words.include?(word)
			sentence << word + " " 
		else
			sentence << word.capitalize! + " " 
		end
	end
	return sentence.strip
end