def translate the_sentence
	vowels_array = ["a", "e", "i", "o" , "u"]
	the_words = the_sentence.split
	the_words.length.times do |i|
		the_word = the_words[i]
		if (vowels_array.include? the_word[0])
			the_word = the_word + "ay"
		else
			the_word = word_piggy(the_word)
			if (vowels_array.include? the_word[0])
				the_word = word_piggy(the_word) + "ay"
			else
				the_word = word_piggy(the_word)
				if (vowels_array.include? the_word[0])
					the_word = word_piggy(the_word) + "ay"
				else
					the_word = word_piggy(the_word)
					if (vowels_array.include? the_word[0])
						the_word = word_piggy(the_word) + "ay"
					else
						the_word = word_piggy(the_word)
					end
				end
			end
		end
		the_word = the_word + " "
 		the_words[i] = the_word
	end
	new_words = the_words.join
 	new_words.chomp(" ")
end

def word_piggy the_word
	vowels_array = ["a", "e", "i", "o" , "u"]
	if (the_word[0..1] == "qu")
		x = the_word.length - 1
		new_word = the_word[2..x] + "qu" 
	elsif (vowels_array.include? the_word[0])
		new_word = the_word
	else
		x = the_word.length - 1
		new_word = the_word[1..x] + the_word[0]
	end
	new_word
end