class Book
	def initialize()
	end

	def title=(name)
		@title = name.capitalize
	end

	def title
		small_words = ["and", "in", "the", "of", "a", "an"]
		title_split = @title.split(" ").map {|word| small_words.include?(word) ? word.downcase : word.capitalize}.join(" ")
	end
end