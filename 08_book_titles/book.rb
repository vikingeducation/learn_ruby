class Book
	attr_accessor :title
	def title= str
		words = str.split(' ')
		words.map! do |word|
			if %w[the a an and in of].include?(word)
				word = word
			else
				word = word.capitalize
			end
		end
		words[0] = words[0].capitalize
		@title = words.join(' ')
	end
end