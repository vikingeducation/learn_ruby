class Book
	def title=(title)
		@book = title
	end

	def title
		banned = ["and", "in", "the", "of", "the", "a", "an"]
		@book.split(' ').each_with_index.map do |word, i|
			if !banned.include? word or i == 0
				word.capitalize
			else
				word
			end
		end.join(' ')
	end
end