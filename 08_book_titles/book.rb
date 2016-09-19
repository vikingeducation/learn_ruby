
class Book
	def title=(t)
		conjunx_words = ['and','in','the','of','a','an']
		@title = t.capitalize.split(" ").map { |word| 
			if conjunx_words.include?(word)
				word
			else
				word.capitalize
			end
			}.join(' ')
	end

	def title
		@title
	end
end