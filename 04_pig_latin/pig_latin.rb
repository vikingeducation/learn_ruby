# Pig Latin 

# Translate
def translate(phrase)
	
	# get all vowels in an array
	vowels = ['a','e','i','o','u']

	# break up phrase into array
	phrase_array = phrase.split(" ")

	# initialize translated array
	phrase_array_translated = []

	# translate each word
	phrase_array.each do |word|
	
		# check if word begins with a vowel
		if vowels.include?(word[0].downcase)
			phrase_array_translated << word += "ay" 
			next		

		# check if word begins with a consonant or consonant "chunk"
		else
			consonant_chunk = ""
			letter_tracker = 0 
	
			while !vowels.include?(word[letter_tracker].downcase) || # keep going until a vowel is hit, unless...
				word[letter_tracker].downcase == "u" && word[letter_tracker-1].downcase == "q" # ...special case "qu" is found
	
				consonant_chunk += word[letter_tracker]
				letter_tracker += 1
	
			end
	
			phrase_array_translated << word[letter_tracker..word.length] + consonant_chunk + "ay"
		end

	end

	phrase_array_translated.join(" ")

end

