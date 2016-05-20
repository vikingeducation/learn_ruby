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

	array = word.split(" ")

	array.each_with_index.map { |w, i|

			if (w == "and" || w == "or" || w == "the" || w == "over") && i != 0
				w
			else
				w.capitalize
			end }.join(" ")


end
