def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, times = 1)
	return word + " #{word}"*(times) if times == 1 
	word + " #{word}"*(times -1)
end

def start_of_word(word, num_letters)
	word[0...num_letters]
end

def first_word(word)
	word.split(" ").first
end

def titleize(sentence)
	# word.split(" ").map(&:capitalize).join(" ")
	# sentence = sentence.split(" ")
	# words.map(:capitalize)
	sentence.capitalize
	words = sentence.split(" ").map(&:capitalize)
	words.map! do |word|
		if word == "Over" || word == "And" || word == "The"
			word.downcase
		else
			word
		end
	end
	words[0] = words[0].capitalize
	# words[1..-1].map! {|word| puts word if word != "Over"}
	words.join(" ")
end