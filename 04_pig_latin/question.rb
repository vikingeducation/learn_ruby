# /pig_latin.rb
# traslate a word beginning with a vowel - all one method
require 'pry'



def translate(s)



	def one_vowel?( word )

		word.start_with?( "a", "e", "i", "o", "u" ) ? true : false

	end


	def one_consonant(s)

		# store the letters in an array
		ch_array = s.chars

		# then grab the first letter from the array
		first_letter = ch_array.shift

		# put that letter at the back with push and add 'ay'
		ch_array << first_letter + "ay"

		# bring it back together
		ch_array.join

	end




	def two_consonants(s)

				# store the letters in an array
				ch_array = s.chars

				# then grab the first letter from the array
				first_letter = ch_array.shift

				# then grab the second letter from the array
				second_letter = ch_array.shift

				# put both letters at the back with push and add 'ay'
				ch_array << first_letter + second_letter + "ay"

				# bring it back together
			  ch_array.join


	end




	# create a variable that lets us determine if there are more than one word by using an array we can pass 'count' on
	words = s.split(" ")



		# check how many words there are in the string
		if words.count == 1



			# check for aeiou at the start and append 'ay'
			if one_vowel?(s) == true

				# translating any vowel
				s + "ay"



			# check if the second letter is a vowel then translate
			elsif s.chars[1].start_with?( "a", "e", "i", "o", "u" )

				one_consonant(s)



			# runs if there are two consonants in the array
			elsif

				two_consonants(s)

			end







		# called if there are two words or more
		else



			words.map { |w|

				if one_vowel(w) == true

					# translating any vowel
					w + "ay"




				# check if the second letter is a vowel then translate
				elsif w.chars[1].start_with?( "a", "e", "i", "o", "u" )

					# store the letters in an array
					ch_array = w.chars

					# then grab the first letter from the array
					first_letter = ch_array.shift

					# put that letter at the back with push and add 'ay'
					ch_array << first_letter + "ay"

					# bring it back together
					ch_array.join




				# runs if there are two consonants in the array
				elsif

					# store the letters in an array
					ch_array = w.chars

					# then grab the first letter from the array
					first_letter = ch_array.shift

					# then grab the second letter from the array
					second_letter = ch_array.shift

					# put both letters at the back with push and add 'ay'
					ch_array << first_letter + second_letter + "ay"

					# bring it back together
					ch_array.join

				end}.join(" ")



		end # /.if count_of_words == 1





end






