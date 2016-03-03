class Book

	def title= string
		conjunction = ["and", "in", "the", "of", "a", "an"]
		first_word = true
		@title = string.split(" ").map! do |word|
			if first_word
				first_word = false
				word.capitalize
			elsif conjunction.include?(word)
				word
			else
				word.capitalize
			end
		end.join(" ")
	end

	def title
		@title
	end
end