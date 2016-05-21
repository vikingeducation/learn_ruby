# /pig_latin.rb
# traslate a word beginning with a vowel - all one method
require 'pry'



def translate(s)



	def one_vowel?( word )

		word.start_with?( "a", "e", "i", "o", "u" )


	end

	def translate_one_vowel( word )

				word + "ay"

	end



	def translate_one_consonant(s)

		# store the letters in an array
		ch_array = s.chars

		# then grab the first letter from the array
		first_letter = ch_array.shift

		# put that letter at the back with push and add 'ay'
		ch_array << first_letter + "ay"

		# bring it back together
		ch_array.join

	end




	def translate_two_consonants(s)

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


	def translate_three_consonants( s )

				# store the letters in an array
				ch_array = s.chars

				# then grab the first letter from the array
				first_letter = ch_array.shift

				# then grab the second letter from the array
				second_letter = ch_array.shift

				# then grab the third letter from the array
				third_letter = ch_array.shift

				# put both letters at the back with push and add 'ay'
				ch_array << first_letter + second_letter + third_letter + "ay"

				# bring it back together
			  ch_array.join

	end



	# store the word in an array with split so we can translate multiple words with each if multiples
	words = s.split(" ")


		# check how many words there are in the string
		# if words.count == 1
	words.map { | w |


			# check for aeiou at the start and append 'ay'
			if one_vowel?( w )

				# translating any vowel
				translate_one_vowel( w )



			# check if the second letter is a vowel then translate
			elsif s.chars[1].start_with?( "a", "e", "i", "o", "u" ) && s.chars[0] != "q"

				translate_one_consonant( w )

			elsif s.chars[0].start_with?("q") && s.chars[1].start_with?("u")

				translate_two_consonants( w )

			elsif  s.chars[1].start_with?("q")

				translate_three_consonants( w )

			# runs if there are two consonants in the array
			elsif s.chars[2].start_with?( "a", "e", "i", "o", "u" )

				translate_two_consonants( w )

			else

				translate_three_consonants( w )

			end

}.join(" ")



end


		# called if there are two words or more














