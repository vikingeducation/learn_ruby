class Book
	def title
		@title
	end

	def title=str
		no_caps = ['and', 'in', 'the', 'of', 'a', 'an']
		result = []
		str[0] = str[0].upcase
		str.split(' ').each do |word|
			word[0] = word[0].upcase unless no_caps.include?(word)
			result << word
		end
		@title = result.join(' ')
	end
end