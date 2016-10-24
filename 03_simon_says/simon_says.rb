# Simon Says

# Echo 
def echo(word)
	word
end

# Shout
def shout(word)
	word.upcase
end

# Repeat
def repeat(word, times_said=2)
	phrase = word
	(times_said-1).times do 
		phrase += " " + word
	end
	phrase
end

# Start of word
def start_of_word(word, location)
	word[0...location] # 0 to location-1
end

# First word
def first_word(phrase)
	phrase_arr = phrase.split(" ")
	phrase_arr[0]
end

# Capitalize
def titleize(phrase)
	little_words = ["the", "a", "and", "over"]
	phrase_arr = phrase.split(" ")	
	phrase_arr = phrase_arr.each_with_index do |word, location|
		if location == 0 || !little_words.include?(word.downcase)
			word[0] = word[0].upcase
		end
	end 
	phrase_arr.join(" ")	
end


