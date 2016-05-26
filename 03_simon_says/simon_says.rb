#simon_says.rb


# repeat the word once
def echo( word )

	word

end


# capitalize the received word with upcase
def shout( word )

	word.upcase

end



# repeat word based on num
def repeat( word , num = nil )

	if num == nil

		word + " " + word

	else

		"#{word} " * ( num-1 ) + word

	end

end



# return the desired letter receiving word and char #
def start_of_word( word, char )

	# break word into array with chars and translate char to index by subtracting 1
	word.chars[ 0..char-1 ].join

end



# take a string and return first word
def first_word( string )

	# use split to break words into array and return first
	string.split(' ').first

end


# capitalize the word
def titleize( word )

	# break up the word/string into an array so we can iterate
	array = word.split(" ")

	# run through each word and track the index
	array.each_with_index.map { | w , i |

			# DO NOT capitalize little words, but check index to make sure not 0 - we want to capitalize any First word
			if ( w == "and" || w == "or" || w == "the" || w == "over" ) && i != 0

				w # doesn't capitalize but still stores in array

			else

				# capitalize if above tests fail
				w.capitalize

			end }.join(" ") # bring the array back into a string


end
