class Book
	attr_accessor :title

	def title
		words = @title.split ' '
		articles = ["the", "a", "an", "and", "in", "of"]
		if articles.include? words[0]
			words[0][0] = words[0][0].upcase
		end
		words.each do |word|
			if articles.include? word
				next
			else
				word[0] = word[0].upcase
			end
		end
		words.join ' '
	end
end