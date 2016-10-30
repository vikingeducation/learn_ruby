class Book
	attr_reader :title

	def title=(str)
		@title = titleize(str)
	end

	def titleize(someString)
		words = someString.split

		words[0].capitalize!

		words.map! { |e| 
			case 
			when e == "i" then e.capitalize
			when e == "and" || e == "the" then e #do nothing
			when e.length <= 2 then e #do nothing				
			else e.capitalize 
			end
		}

		words.join(" ")
	end
end