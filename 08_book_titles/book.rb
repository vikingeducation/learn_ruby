require 'pry'


class Book


	attr_accessor :title

	def initialize
		@title = title
	end



	def title

		if @title == nil
			return
		else
			str = @title.split(" ")
		  str.each_with_index.map { | w , index |
		  	if (w == "the" || w == "in" || w == "and" || w == "of" || w == "a" || w == "an") && index != 0
		  		w
		  	else
		  			w.capitalize
		  	end
		  	}.join(" ")
	  end

	end



end






