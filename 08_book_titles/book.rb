# book.rb

require 'pry'


class Book

	# read/write access to title
	attr_accessor :title

	# create instance variable title
	def initialize

		@title = title

	end



	def title

		if @title == nil

			return

		else

			# set var to title broken into array of words
			str = @title.split(" ")

			# with index iterate through each word
		  str.each_with_index.map { | w , index |

		  	# if not the first word (index=0) and is a small word, NO capitalization
		  	if (w == "the" || w == "in" || w == "and" || w == "of" || w == "a" || w == "an") && index != 0
		  		w

		  	else

		  			# otherwise we capitalize
		  			w.capitalize

		  	end	}.join(" ") # turn the array back into a string

	  end

	end



end






