def echo( word )

	word

end


def shout( word )

	word.upcase

end


def repeat( word , num = nil )


	if num == nil

		word + " " + word

	else

		"#{word} " * ( num-1 ) + word

	end

end


def start_of_word( word, char )

	word.chars[ 0..char-1 ].join

end


def first_word( string )

	string.split(' ').first

end


def titleize( word )

	# we need to take the word and capitalize the first letter
	# we take the word(s) and put them into an array
	if word.include?(" ") == false
		ch_array = word.chars
		ch_array[ 0 ].upcase!
		ch_array.join
	else
		word_array = word.split(" ")
		return word_array.map { |w| 

			w.chars

		}

  end

end