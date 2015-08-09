class Book
	def initialize
		@title = ''
		@untitlized_words = [
			'a',
			'an',
			'of',
			'in',
			'and',
			'the',
			'over'
		]
	end
	
	def title
		@title
	end
	
	def title=(value)
		@title = value.split(' ').map.with_index {|word, i| (@untitlized_words.include?(word) && i > 0) ? word : word.capitalize }.join(' ')
	end
end