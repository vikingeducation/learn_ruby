class Book

	def title=(name)
		articles = ["a", "an", "the"]
		conjunctions = ["and", "but", "for", "nor", "or", "so", "yet"]
		prepositions = ["as", "at", "by", "below", "in", "of"]
		name_array = name.split(" ")
		new_name_array = []
		name_array.each_with_index do |word, index|
			if index == 0
				new_name_array << word.capitalize
			elsif articles.include?(word) || conjunctions.include?(word) || prepositions.include?(word)
				new_name_array << word
			else
				new_name_array << word.capitalize
			end
		end
		@title = new_name_array.join(" ")
	end

	def title
		@title
	end


end