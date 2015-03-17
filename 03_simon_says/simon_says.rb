def echo(phrase)
	phrase
end

def shout(phrase)
	phrase.upcase
end

def repeat(phrase,repeats=2)
	final = ""
	repeats.times do
		final += phrase + " "
	end
	final.chomp(" ")
end

def start_of_word(word,depth)
	letters = word.split('')
	letters[0..depth-1].join('')
end

def first_word(sentence)
	words = sentence.split(' ')
	words[0]
end

def titleize(input)
	sentence = input.split(" ")
	final = ""
	except = ["and", "the", "over"] # this can obviously be edited to include other words not to capitalize!
	sentence.each_with_index do |word,index|
		# this looks a little difficult but it's really just saying
		# if the word is in the exclude list AND it's not the first word
		# then don't capitalize it. Otherwise, capitalize it.
		unless except.include?(word) && index != 0
			final += word.capitalize + " "
		else 
			final += word + " "
		end
	end
	final.chomp(" ")
end