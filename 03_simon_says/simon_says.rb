require 'pry'

def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, times = 2)
	("#{word} " * times).strip
end

def start_of_word(word, amount)
	word[0..(amount-1)]
end

def first_word(phrase)
	phrase.split(" ")[0]
end

def titleize(words)
	little_words = ["the", "a", "and", "or", "to", "of", "over"]
	word_array = words.split(" ")
	word_array[0].capitalize!
	word_array.each do |word|
		if little_words.include?(word) == false
			word.capitalize!
		end
	end
	word_array.join(" ")
end