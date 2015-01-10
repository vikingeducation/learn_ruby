class Book 

	attr_reader :title

	def title=(name)
		words = name.split(" ")
		words.map! do |word| 
			if ["and", "or", "in", "on", "of", "the", "over", "a", "an"].include? (word.downcase)
				word
			else
				word.capitalize
			end
		end
		words[0].capitalize!
		@title = words.join(" ")
	end

end