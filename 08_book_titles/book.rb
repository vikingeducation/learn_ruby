class Book
	attr_accessor :title

	def title
		# @title = @title.capitalize
		@title = titleize(@title)
	end

	def titleize(sentence)
		sentence.capitalize
		words = sentence.split(" ").map(&:capitalize)
		words.map! do |word|
			if word == "Over" || word == "And" || word == "The" || word == "In" || word == "Of" || word == "A" || word == "An"
				word.downcase
			else
				word
			end
		end
		words[0] = words[0].capitalize
		words.join(" ")
	end
end