# traslate a word beginning with a vowel - all one method

def translate(s)
	# we need to place 'ay' at the end of the word
	# if it starts with a vowel, the word is unchanged and 'ay' appended


	# check for aeiou at the start and append 'ay'
	if s.start_with?( "a", "e", "i", "o", "u" )

		# translating any vowel
		s + "ay"

	# check if the second letter is a vowel then translate
	elsif s.chars[1].start_with?( "a", "e", "i", "o", "u" )

		# store the letters in an array
		ch_array = s.chars

		# then grab the first letter from the array
		first_letter = ch_array.shift

		# put that letter at the back with push and add 'ay'
		ch_array << first_letter + "ay"

		# bring it back together
		ch_array.join

	end

	# we could chars the word, store the first letter in a var and add it to the array + ay then join



end


=begin

	array.each_with_index.map { | w , i |

			if ( w == "and" || w == "or" || w == "the" || w == "over" ) && i != 0
				w
			else
				w.capitalize
			end }.join(" ")

=end
