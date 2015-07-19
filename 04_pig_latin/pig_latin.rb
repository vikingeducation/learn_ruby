def translate(input)
	# setting up the vowels and consonants arrays
	vowels = "aeiou".split('')
	consonants = "bcdfghjklmnpqrstvwxyz".split('')

	# this will be the final output string
	final = ""

	# the index of the capitalized letters in each word (for the bonus question)
	capitalize_index = []

	# clean the input before the loop
	sentence = input.split(' ')

	# begin running the loop on each word
	sentence.each do |word|
		this_word = word.split('')

		# this code finds the index of a capitalized letter and 
		# saves it to the capitalize_index variable
		this_word.each_with_index do |letter,index|
			if letter.upcase == letter
				capitalize_index.push(index)
			end
		end

		# for testing purposes we want everything to be lowercase
		this_word.each {|letter| letter.downcase!}

		# this method recapitalizes the letters once they are checked with the list 
		# of vowels and consonants
		def recapitalize(word,index_array)
			index_array.each do |index|
				word[index].upcase!
			end
			word
		end

		# originally had it add "ay" here but since I'm doing that 
		# at the end I don't want it to trigger the else statement
		# refactoring: is there a way to run recapitalize w/o 
		# calling it every scenario?

		if vowels.include?(this_word[0])
			recapitalize(this_word,capitalize_index)
		elsif this_word[0] == "q" && this_word[1] == "u"
			recapitalize(this_word,capitalize_index)
			2.times {this_word << this_word.shift()}
		elsif consonants.include?(this_word[0]) && this_word[1] == "q" && this_word[2] == "u"
			recapitalize(this_word,capitalize_index)
			3.times {this_word << this_word.shift()}
		elsif consonants.include?(this_word[0]) && consonants.include?(this_word[1]) && consonants.include?(this_word[2])
			recapitalize(this_word,capitalize_index)
			3.times {this_word << this_word.shift()}
		elsif consonants.include?(this_word[0]) && consonants.include?(this_word[1])
			recapitalize(this_word,capitalize_index)
			2.times {this_word << this_word.shift()}
		else
			recapitalize(this_word,capitalize_index)
			this_word << this_word.shift()
		end
		this_word << "ay" + " "
		capitalize_index = [] # reset or else multiple words will share the same index!
		final << this_word.join('')
	end
	final.chomp(' ')
end
