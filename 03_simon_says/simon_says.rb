def echo word
	word
end


def shout word
	word.upcase
end


def repeat word, number = 2
	arr = Array.new(number, word).join(" ")
end


def start_of_word word, number
	word[0..number-1]
end


def first_word words
	words.split(" ").first
end


def titleize word
	little_words = ["and", "the", "over"]
	if word.split(" ").length > 1
		word = word.split(" ").map! do |word| 
			if little_words.include?(word)
				word
			else
				word=word.capitalize
			end
		end.join(" ")
	else
		word.capitalize
	end
	word[0] = word[0].upcase
	word
end